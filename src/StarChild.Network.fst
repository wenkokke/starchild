module StarChild.Network

open FStar.Real
open StarChild.LinearAlgebra


// Activation functions

noeq type activation =
  | Linear  : activation
  | ReLU    : activation
  | Sigmoid : activation
  | Softmax : activation

val rmax : real -> real -> Tot real
let rmax x y = if x >=. y then x else y

val rmin : real -> real -> Tot real
let rmin x y = if x <=. y then x else y

val btwn : real -> real -> real -> Tot real
let btwn l u x = rmax l (rmin u x)

val relu : real -> Tot real
let relu x = rmax x 0.0R

val ( ~. ) : real -> Tot real
let ( ~. ) x = 0.0R -. x

val rabs : real -> Tot real
let rabs x = if x >=. 0.0R then x else ~. x

val dist : real -> real -> Tot real
let dist x y = rabs (x -. y)

val lexp : real -> Tot real_pos
let lexp x = if x <=. ~. 1.0R then 0.00001R
        else if x >=.    1.0R then 5.898R *. x -. 3.898R
        else x +. 1.0R

val norm : #n:pos -> vector real_pos n -> vector real n
let norm #n xs = map1 #real_pos #real #n (fun x -> x /. sum_pos #n xs) xs

val lsoftmax : #n:pos -> vector real n -> vector real n
let lsoftmax #n xs = norm (map1 #real #real_pos #n lexp xs)

val lsigmoid : real -> Tot real
let lsigmoid x = btwn 0.0R 1.0R (0.25R *. x +. 0.5R)

val run_activation : #n:pos -> activation -> vector real n -> vector real n
let run_activation #n a xs =
  match a with
  | Linear  -> xs
  | ReLU    -> map1 relu xs
  | Sigmoid -> map1 lsigmoid xs
  | Softmax -> lsoftmax xs


// Layers

noeq type layer (i:pos) (o:pos) =
  { weights    : matrix real i o
  ; biases     : vector real o
  ; activation : activation
  }

val run_layer : #i:pos -> #o:pos -> l:layer i o -> xs:vector real i -> Tot (vector real o)
let run_layer #i #o l xs = run_activation #o l.activation (l.biases <+> (vXm #i #o xs l.weights))


// Networks

noeq type network (i:pos) (o:pos) : n:nat -> Type =
  | NLast : l:layer i o -> network i o 1
  | NStep : #n:pos -> #h:pos -> l:layer i h -> ls:network h o n -> network i o (n + 1)

val run_network : #i:pos -> #o:pos -> #n:pos -> ls:network i o n -> xs:vector real i -> Tot (vector real o) (decreases n)
let rec run_network #i #o #n ls xs = match ls with
  | NLast l    -> run_layer l xs
  | NStep l ls -> run_network ls (run_layer l xs)

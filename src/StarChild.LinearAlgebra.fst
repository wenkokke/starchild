module StarChild.LinearAlgebra

open FStar.List
open FStar.Real

let vector a n = l:list a {length l == n}
let matrix a r c = vector (vector a c) r

val dot : #n:nat -> vector real n -> vector real n -> Tot real
let rec dot #n xs ys =
  match xs, ys with
  | [], [] -> 0.0R
  | (x :: xs) , (y :: ys) -> x *. y +. dot #(n - 1) xs ys

val scale : #n:nat -> real -> vector real n -> Tot (vector real n)
let scale #n x ys = mapT (fun y -> x *. y) ys

val add : #n:nat -> real -> vector real n -> Tot (vector real n)
let add #n x ys = mapT (fun y -> x +. y) ys

val vadd : #n:nat -> vector real n -> vector real n -> Tot (vector real n)
let rec vadd #n xs ys =
  match xs, ys with
  | [], [] -> []
  | (x :: xs), (y :: ys) -> (x +. y) :: vadd #(n - 1) xs ys

val replicate : n:nat -> real -> Tot (vector real n)
let rec replicate n x =
  match n with
  | 0 -> []
  | n -> x :: replicate (n - 1) x

val as_row : #c:nat -> vector real c -> Tot (matrix real 1 c)
let as_row #c xs = [xs]

val as_col : #r:nat -> vector real r -> Tot (matrix real r 1)
let as_col #r xs = mapT (fun x -> [x]) xs

val vXm : #r:nat -> #c:nat -> vector real r -> matrix real r c -> Tot (vector real c)
let rec vXm #r #c xs yss =
 match xs, yss with
 | [], [] -> replicate c 0.0R
 | (x :: xs), (ys :: yss) -> vadd (scale x ys) (vXm #(r - 1) #c xs yss)

val mXm : #i:nat -> #j:nat -> #k:nat -> matrix real i j -> matrix real j k -> Tot (matrix real i k)
let rec mXm #i #j #k xss yss =
  match xss with
  | [] -> []
  | (xs :: xss) -> vXm #j #k xs yss :: mXm #(i - 1) #j #k xss yss

val mXv : #r:nat -> #c:nat -> matrix real r c -> vector real c -> Tot (vector real r)
let mXv #r #c xss ys = mXm #r #c #1 xss (as_col ys)

noeq type fully_connected r c = { bias: real; weights: matrix real r c }

val run_forwards : #r:nat -> #c:nat -> fully_connected r c -> vector real c -> Tot (vector real r)
let run_forwards #r #c l xs = add l.bias (mXv l.weights xs)

val predict : #r:nat -> #c:nat -> fully_connected r c -> vector real c -> Tot (vector bool r)
let predict #r #c l xs = mapT (fun y -> y >=. 0.0R) (run_forwards l xs)

val example1 : fully_connected 1 2
let example1 = { bias = 0.184R; weights = [[0.194R; 0.195R]] }

let test1 = assert ((predict example1 [1.0R; 1.0R]) == [true])
let test2 = assert ((predict example1 [1.0R; 1.0R]) == [false])
let test3 = assert (forall x1 x2. (x1 >=. 0.0R /\ x2 >=. 0.0R) ==> ((predict example1 [x1; x2]) == [true]))

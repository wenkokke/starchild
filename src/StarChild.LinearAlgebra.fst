module StarChild.LinearAlgebra

include FStar.List.Tot

open FStar.Real
open FStar.Mul

type real_nat = x:real {x >=. 0.0R}
type real_pos = x:real {x >. 0.0R}
type vector 'a n = v:list 'a {length v == n}
type matrix 'a r c = vector (vector 'a c) r

val all : #a:Type -> #n:nat -> p:(a -> bool) -> xs:vector a n -> Tot bool
let all #a #n p xs = fold_right (fun x y -> p x && y) xs true

val map1 : #a:Type -> #b:Type -> #n:nat -> f:(a -> Tot b) -> xs:vector a n -> Tot (vector b n)
let rec map1 #a #b #n f xs = match xs with
  | [] -> []
  | (x :: xs) -> f x :: map1 #a #b #(n - 1) f xs

val map2 : #a:Type -> #b:Type -> #c:Type -> #n:nat -> f:(a -> b -> Tot c) -> xs:vector a n -> ys:vector b n -> Tot (vector c n)
let rec map2 #a #b #c #n f xs ys = match xs, ys with
  | [], [] -> []
  | (x :: xs), (y :: ys) -> f x y :: map2 #a #b #c #(n - 1) f xs ys

val sum_pos_or : #n:nat -> x:real_pos -> xs:vector real_pos n -> real_pos
let rec sum_pos_or #n x xs = match xs with
  | [] -> x
  | (y :: ys) -> x +. sum_pos_or #(n - 1) y ys

val sum_pos : #n:pos -> xs:vector real_pos n -> real_pos
let sum_pos #n xs = match xs with
  | (y :: ys) -> sum_pos_or #(n - 1) y ys

val sum_nat : #n:nat -> xs:vector real_nat n -> real_nat
let rec sum_nat #n xs = match xs with
  | [] -> 0.0R
  | (y :: ys) -> y +. sum_nat #(n - 1) ys

val sum : #n:nat -> xs:vector real n -> real
let sum #n xs = fold_right (fun x y -> x +. y) xs 0.0R

val dot : #n:nat -> xs:vector real n -> ys:vector real n -> Tot real
let dot #n xs ys = sum (map2 (fun x y -> x *. y) xs ys)

val ( <.> ) : #n:nat -> xs:vector real n -> ys:vector real n -> Tot real
let ( <.> ) = dot

val sAv : #n:nat -> x:real -> ys:vector real n -> Tot (vector real n)
let sAv #n x ys = map (fun y -> x +. y) ys

val ( +> ) : #n:nat -> x:real -> ys:vector real n -> Tot (vector real n)
let ( +> ) = sAv

val vAv : #n:nat -> xs:vector real n -> ys:vector real n -> Tot (vector real n)
let vAv #n xs ys = map2 (fun x y -> x +. y) xs ys

val ( <+> ) : #n:nat -> xs:vector real n -> ys:vector real n -> Tot (vector real n)
let ( <+> ) = vAv

val scale : #n:nat -> x:real -> ys:vector real n -> Tot (vector real n)
let scale #n x ys = map (fun y -> x *. y) ys

val to_vec : #a:Type -> x:a -> Tot (vector a 1)
let to_vec #a x = [x]

val from_vec : #a:Type -> xs:vector a 1 -> a
let from_vec #a xs = match xs with
  | (x :: []) -> x

val to_row : #a:Type -> #c:nat -> vector a c -> Tot (matrix a 1 c)
let to_row #a #c xs = to_vec xs

val from_row : #a:Type -> #c:nat -> matrix a 1 c -> vector a c
let from_row #a #c xss =  from_vec xss

val to_col : #a:Type -> #r:nat -> vector a r -> Tot (matrix a r 1)
let to_col #a #r xs = map to_vec xs

val from_col : #a:Type -> #r:nat -> matrix a r 1 -> vector a r
let from_col #a #r xss = map (from_vec #a) xss

val replicate : #a:Type -> #n:nat -> x:a -> Tot (vector a n)
let rec replicate #a #n x = match n with
  | 0 -> []
  | n -> x :: replicate #a #(n - 1) x

val vXm : #r:nat -> #c:nat -> xs:vector real r -> yss:matrix real r c -> Tot (vector real c)
let rec vXm #r #c xs yss = match xs, yss with
  | [], [] -> replicate 0.0R
  | (x :: xs), (ys :: yss) -> vAv #c (scale #c x ys) (vXm #(r - 1) #c xs yss)

val ( *> ) : #r:nat -> #c:nat -> xs:vector real r -> yss:matrix real r c -> Tot (vector real c)
let ( *> ) = vXm

val mXm : #i:nat -> #j:nat -> #k:nat -> matrix real i j -> matrix real j k -> Tot (matrix real i k)
let mXm #i #j #k xss yss = map (fun xs -> vXm #j #k xs yss) xss

val ( <*> ) : #i:nat -> #j:nat -> #k:nat -> matrix real i j -> matrix real j k -> Tot (matrix real i k)
let ( <*> ) = mXm

val mXv : #r:nat -> #c:nat -> xss:matrix real r c -> ys:vector real c -> Tot (vector real r)
let mXv #r #c xss ys = from_col (mXm xss (to_col #real #c ys))

val ( <* ) : #r:nat -> #c:nat -> xss:matrix real r c -> ys:vector real c -> Tot (vector real r)
let ( <* ) = mXv



//Distances


// 1. Square Eucledian distance : (d([x;y], (z;w))^2 = (x-z)^2 + (y-w)^2

val sq : real -> Tot real_nat
let sq x = x *. x

val sq_euclidean_dist : #n:nat -> xs:vector real n -> ys:vector real n -> Tot real_nat
let sq_euclidean_dist #n xs ys =
  sum_nat #n (map2 #real #real #real_nat #n (fun x y -> sq (x -. y)) xs ys)

// Test: sq_euclidean_dist

let _ = assert_norm (sq_euclidean_dist #2 [0.0R; 0.0R] [1.0R; 1.0R] = 2.0R)

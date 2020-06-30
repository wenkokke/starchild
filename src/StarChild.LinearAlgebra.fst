module StarChild.LinearAlgebra

include FStar.List.Tot

open FStar.Real
open FStar.Mul

type real_nat = x:real {x >=. 0.0R}
type real_pos = x:real {x >. 0.0R}

type vector 'a n = v:list 'a {length v == n}
type matrix 'a r c = vector (vector 'a c) r

val ( ~. ) : real -> Tot real
let ( ~. ) x = 0.0R -. x

val max : real -> real -> Tot real
let max x y = if x >=. y then x else y

val max_nat : real_nat -> real_nat -> Tot real_nat
let max_nat x y = if x >=. y then x else y

val min : real -> real -> Tot real
let min x y = if x <=. y then x else y

val min_nat : real_nat -> real_nat -> Tot real_nat
let min_nat x y = if x <=. y then x else y

val abs : real -> Tot real_nat
let abs x = if x >=. 0.0R then x else ~. x

val dist : real -> real -> Tot real
let dist x y = abs (x -. y)

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


// 1. Square Eucledian distance (defined for L2-norm) : (d([x;y], [z;w])^2 = (x-z)^2 + (y-w)^2

val sq : real -> Tot real_nat
let sq x = x *. x

val sq_euclidean_dist : #n:nat -> xs:vector real n -> ys:vector real n -> Tot real_nat
let sq_euclidean_dist #n xs ys =
  sum_nat #n (map2 #real #real #real_nat #n (fun x y -> sq (x -. y)) xs ys)

// Test: sq_euclidean_dist

let _ = assert_norm (
  sq_euclidean_dist #2
    (let v = [0.0R; 0.0R] in assert_norm (length v = 2); v)
    (let v = [1.0R; 1.0R] in assert_norm (length v = 2); v) = 2.0R)

let _ = assert_norm (
  sq_euclidean_dist #3
    (let v = [0.0R; 0.0R; 0.0R] in assert_norm (length v = 3); v)
    (let v = [1.0R; 1.0R; 1.0R] in assert_norm (length v = 3); v) = 3.0R)

let _ = assert_norm (
  sq_euclidean_dist #4
    (let v = [0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 4); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 4); v) = 4.0R)

let _ = assert_norm (
  sq_euclidean_dist #5
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 5); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 5); v) = 5.0R)

let _ = assert_norm (
  sq_euclidean_dist #6
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 6); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 6); v) = 6.0R)

let _ = assert_norm (
  sq_euclidean_dist #7
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 7); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 7); v) = 7.0R)

let _ = assert_norm (
  sq_euclidean_dist #8
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 8); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 8); v) = 8.0R)

let _ = assert_norm (
  sq_euclidean_dist #9
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 9); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 9); v) <. 10.0R)

// 2. Absolute distance (also known as Manhattan distance, defined for L1-norm):
// (d([x;y], [z;w]) = |x-z| + |y-w|)

val abs_dist : #n:nat -> xs:vector real n -> ys:vector real n -> Tot real_nat
let abs_dist #n xs ys =
  sum_nat #n (map2 #real #real #real_nat #n (fun x y -> abs (x -. y)) xs ys)

// Test: abs_dist

let _ = assert_norm (
  abs_dist #2
    (let v = [0.0R; 0.0R] in assert_norm (length v = 2); v)
    (let v = [1.0R; 1.0R] in assert_norm (length v = 2); v) = 2.0R)

let _ = assert_norm (
  abs_dist #3
    (let v = [0.0R; 0.0R; 0.0R] in assert_norm (length v = 3); v)
    (let v = [1.0R; 1.0R; 1.0R] in assert_norm (length v = 3); v) = 3.0R)

let _ = assert_norm (
  abs_dist #4
    (let v = [0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 4); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 4); v) = 4.0R)

let _ = assert_norm (
  abs_dist #5
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 5); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 5); v) = 5.0R)

let _ = assert_norm (
  abs_dist #6
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 6); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 6); v) = 6.0R)

let _ = assert_norm (
  abs_dist #7
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 7); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 7); v) = 7.0R)

let _ = assert_norm (
  abs_dist #8
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 8); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 8); v) = 8.0R)

let _ = assert_norm (
  abs_dist #9
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 9); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 9); v) <. 10.0R)

// 3. Worst-error distance (also known as Chebyshev distance, defined for L_{infinty}-norm):
// (d([x;y], [z;w]) = max (|x-z| , |y-w|)

val worst_dist : #n:nat -> xs:vector real n -> ys:vector real n -> Tot real_nat
let worst_dist #n xs ys =
  fold_right max_nat (map2 #real #real #real_nat #n (fun x y -> abs (x -. y)) xs ys) 0.0R

// Test: worst_dist

let _ = assert_norm (
  worst_dist #2
    (let v = [0.0R; 0.0R] in assert_norm (length v = 2); v)
    (let v = [1.0R; 5.0R] in assert_norm (length v = 2); v) = 5.0R)

let _ = assert_norm (
  worst_dist #3
    (let v = [0.0R; 0.0R; 0.0R] in assert_norm (length v = 3); v)
    (let v = [1.0R; 1.0R; 5.0R] in assert_norm (length v = 3); v) = 5.0R)

let _ = assert_norm (
  worst_dist #4
    (let v = [0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 4); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 4); v) = 1.0R)

let _ = assert_norm (
  worst_dist #5
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 5); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 5); v) = 1.0R)

let _ = assert_norm (
  worst_dist #6
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 6); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 6); v) = 1.0R)

let _ = assert_norm (
  worst_dist #7
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 7); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 7); v) = 1.0R)

let _ = assert_norm (
  worst_dist #8
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 8); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 8); v) = 1.0R)

let _ = assert_norm (
  worst_dist #9
    (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 9); v)
    (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 9); v) = 1.0R)

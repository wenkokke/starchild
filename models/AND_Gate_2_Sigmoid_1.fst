module AND_Gate_2_Sigmoid_1

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Network

val n : int
let n = 2

val t : real
let t = 1000000000.0R

val layer1 : layer n 1
let layer1 = { weights    = replicate #(vector real 1) #n [t /. of_int n]
             ; biases     = [~.(t -. (t /. (2.0R *. of_int n)))]
             ; activation = Sigmoid
             }

val model : network n 1 1
let model = NLast layer1

let _ = assert(run_network model [1.0R; 1.0R] == [1.0R])
let _ = assert(run_network model [0.0R; 1.0R] == [0.0R])
let _ = assert(run_network model [1.0R; 0.0R] == [0.0R])
let _ = assert(run_network model [0.0R; 0.0R] == [0.0R])

let epsilon  = 0.24R
let truthy x = dist x 1.0R <. epsilon
let falsey x = dist x 0.0R <. epsilon

let _ = assert(forall (x1:real{truthy x1}) (x2:real{truthy x2}). run_network model [x1; x2] == [1.0R])
let _ = assert(forall (x1:real{falsey x1}) (x2:real{truthy x2}). run_network model [x1; x2] == [0.0R])
let _ = assert(forall (x1:real{truthy x1}) (x2:real{falsey x2}). run_network model [x1; x2] == [0.0R])
let _ = assert(forall (x1:real{falsey x1}) (x2:real{falsey x2}). run_network model [x1; x2] == [0.0R])

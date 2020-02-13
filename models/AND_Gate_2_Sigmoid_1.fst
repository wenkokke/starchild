module AND_Gate_2_Sigmoid_1

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Network

val layer1 : layer 2 1
let layer1 = { weights    = [[228300.0R /. 13.0R]; [228300.0R /. 13.0R]]
             ; biases     = [~.337910.0R /. 13.0R]
             ; activation = Sigmoid
             }

val model : network 2 1 1
let model = NLast layer1

let epsilon  = 0.24R
let truthy x = dist x 1.0R <. epsilon
let falsy  x = dist x 0.0R <. epsilon

let _ = assert(run_network model [1.0R; 1.0R] == [1.0R])
let _ = assert(run_network model [0.0R; 1.0R] == [0.0R])
let _ = assert(run_network model [1.0R; 0.0R] == [0.0R])
let _ = assert(run_network model [0.0R; 0.0R] == [0.0R])

let _ = assert(forall (x1:real{truthy x1}) (x2:real{truthy x2}). run_network model [x1; x2] == [1.0R])
let _ = assert(forall (x1:real{falsy  x1}) (x2:real{truthy x2}). run_network model [x1; x2] == [0.0R])
let _ = assert(forall (x1:real{truthy x1}) (x2:real{falsy  x2}). run_network model [x1; x2] == [0.0R])
let _ = assert(forall (x1:real{falsy  x1}) (x2:real{falsy  x2}). run_network model [x1; x2] == [0.0R])

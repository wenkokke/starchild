module AND_gate

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Network

val layer1 : layer 2 1
let layer1 = { weights    = [[5100.0R]; [1560.0R]]
             ; biases     = [~.5102.0R]
             ; activation = Sigmoid
             }

val model : network 2 1 1
let model = NLast layer1

let epsilon  = 0.1R
let truthy x = dist x 1.0R <=. epsilon
let falsy  x = dist x 0.0R <=. epsilon

let _ = assert (run_network model [1.0R; 1.0R] == [1.0R])
let _ = assert (run_network model [0.0R; 1.0R] == [0.0R])
let _ = assert (run_network model [1.0R; 0.0R] == [0.0R])
let _ = assert (run_network model [0.0R; 0.0R] == [0.0R])

let _ = assert (forall x1 x2. (truthy x1 && truthy x2) ==> (run_network model [x1; x2] == [1.0R]))
// let _ = assert (forall x1 x2. (falsy  x1 || falsy  x2) ==> (run_network model [x1; x2] == [0.0R]))

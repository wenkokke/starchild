module Perceptron

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Network

val layer1 : layer 2 1
let layer1 = { weights    = [[0.194R]; [0.195R]]
             ; biases     = [0.184R]
             ; activation = None
             }

val model : network 2 1 1
let model = NLast layer1

val truthy : real -> Tot bool
let truthy x = 0.0R <=. x && x <. 0.5R

val falsy : real -> Tot bool
let falsy x = 0.5R <. x && x <=. 1.0R

let _ = assert (forall x1 x2. (truthy x1 && truthy x2) ==> (all truthy (run_network model [x1; x2])))
// let _ = assert (forall x1 x2. (falsy x1 || falsy x2) ==> (all falsy (run_network model [x1; x2])))

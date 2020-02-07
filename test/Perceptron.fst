module Perceptron

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Network

val layer1 : layer 2 1
let layer1 = { biases     = [0.184R]
             ; weights    = [[0.194R]; [0.195R]]
             ; activation = Sigmoid
             }

val example : network 2 1 1
let example = NLast layer1

let _ = assert (all (fun y -> y >=. 0.0R) (run_network example [1.0R; 1.0R]))
let _ = assert (forall x1 x2. (x1 >=. 0.0R /\ x2 >=. 0.0R) ==> (all (fun y -> y >=. 0.0R) (run_network example [x1; x2])))

module Random_7_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 7 1
let layer_0 =
  { weights    = [ [0.38933295R]
                 ; [~.0.84248275R]
                 ; [0.76036161R]
                 ; [0.68066067R]
                 ; [~.0.22061133R]
                 ; [~.0.38327786R]
                 ; [0.74701709R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 7 1 1
let model = NLast layer_0
module Random_1_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 1 1
let layer_0 =
  { weights    = [ [0.59038913R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 1 1 1
let model = NLast layer_0
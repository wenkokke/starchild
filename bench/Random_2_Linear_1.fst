module Random_2_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 2 1
let layer_0 =
  { weights    = [ [~.0.00937617R]
                 ; [~.0.44318861R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 2 1 1
let model = NLast layer_0
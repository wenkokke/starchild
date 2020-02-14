module Random_4_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 4 1
let layer_0 =
  { weights    = [ [0.58342826R]
                 ; [0.57587016R]
                 ; [~.0.05099905R]
                 ; [0.47583556R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 4 1 1
let model = NLast layer_0
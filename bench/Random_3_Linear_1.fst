module Random_3_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 3 1
let layer_0 =
  { weights    = [ [1.20249617R]
                 ; [0.92573726R]
                 ; [0.23181069R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 3 1 1
let model = NLast layer_0
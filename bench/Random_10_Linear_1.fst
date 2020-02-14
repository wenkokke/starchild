module Random_10_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 10 1
let layer_0 =
  { weights    = [ [0.16962874R]
                 ; [~.0.31437665R]
                 ; [0.07239014R]
                 ; [~.0.02808094R]
                 ; [0.48194414R]
                 ; [~.0.39855862R]
                 ; [0.35114330R]
                 ; [0.19769704R]
                 ; [0.60226101R]
                 ; [~.0.24541238R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 10 1 1
let model = NLast layer_0
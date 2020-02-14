module Random_15_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 15 1
let layer_0 =
  { weights    = [ [~.0.60285056R]
                 ; [0.49174196R]
                 ; [0.51267046R]
                 ; [~.0.58657992R]
                 ; [0.52600831R]
                 ; [~.0.05271119R]
                 ; [~.0.41770321R]
                 ; [~.0.57231534R]
                 ; [~.0.17276484R]
                 ; [0.51703936R]
                 ; [~.0.33554175R]
                 ; [0.21367025R]
                 ; [~.0.02524269R]
                 ; [0.27955914R]
                 ; [0.03219789R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 15 1 1
let model = NLast layer_0
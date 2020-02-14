module Random_6_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 6 1
let layer_0 =
  { weights    = [ [~.0.62826955R]
                 ; [0.68050063R]
                 ; [~.0.27375978R]
                 ; [0.74758744R]
                 ; [0.75677812R]
                 ; [~.0.31668168R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 6 1 1
let model = NLast layer_0
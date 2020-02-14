module Random_5_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 5 1
let layer_0 =
  { weights    = [ [~.0.69813418R]
                 ; [~.0.33249021R]
                 ; [~.0.54363585R]
                 ; [~.0.08189440R]
                 ; [0.44188476R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 5 1 1
let model = NLast layer_0
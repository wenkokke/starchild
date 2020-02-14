module Random_11_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 11 1
let layer_0 =
  { weights    = [ [~.0.04295659R]
                 ; [~.0.19580382R]
                 ; [~.0.56341112R]
                 ; [0.53936523R]
                 ; [0.24386555R]
                 ; [~.0.55980861R]
                 ; [~.0.01104385R]
                 ; [~.0.55048823R]
                 ; [~.0.11198586R]
                 ; [0.00880635R]
                 ; [0.65781921R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 11 1 1
let model = NLast layer_0
module Random_14_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 14 1
let layer_0 =
  { weights    = [ [~.0.48134550R]
                 ; [0.28275752R]
                 ; [0.34476388R]
                 ; [~.0.30087337R]
                 ; [0.14004087R]
                 ; [0.21367127R]
                 ; [~.0.53806436R]
                 ; [0.43723232R]
                 ; [~.0.46294713R]
                 ; [~.0.04601330R]
                 ; [0.05844891R]
                 ; [~.0.17976102R]
                 ; [~.0.21069857R]
                 ; [0.09431982R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 14 1 1
let model = NLast layer_0
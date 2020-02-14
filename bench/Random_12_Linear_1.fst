module Random_12_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 12 1
let layer_0 =
  { weights    = [ [~.0.36367625R]
                 ; [0.17555374R]
                 ; [0.34077704R]
                 ; [~.0.62408710R]
                 ; [0.42702639R]
                 ; [~.0.19945469R]
                 ; [~.0.23355919R]
                 ; [~.0.35456070R]
                 ; [~.0.28453550R]
                 ; [0.19507962R]
                 ; [0.07284874R]
                 ; [0.07228053R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 12 1 1
let model = NLast layer_0
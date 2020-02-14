module Random_8_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 8 1
let layer_0 =
  { weights    = [ [0.32272577R]
                 ; [~.0.41710940R]
                 ; [~.0.48938882R]
                 ; [~.0.50100952R]
                 ; [0.55430591R]
                 ; [0.32803988R]
                 ; [0.28105736R]
                 ; [0.17902893R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 8 1 1
let model = NLast layer_0
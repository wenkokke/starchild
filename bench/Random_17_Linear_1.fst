module Random_17_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 17 1
let layer_0 =
  { weights    = [ [0.21475875R]
                 ; [~.0.35229096R]
                 ; [0.45284927R]
                 ; [0.49131525R]
                 ; [0.23490286R]
                 ; [~.0.51388955R]
                 ; [0.09163195R]
                 ; [0.48410177R]
                 ; [0.51175153R]
                 ; [~.0.25007474R]
                 ; [~.0.47622988R]
                 ; [0.25254530R]
                 ; [0.23812032R]
                 ; [0.40491426R]
                 ; [~.0.32580361R]
                 ; [~.0.11674199R]
                 ; [~.0.36726987R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 17 1 1
let model = NLast layer_0
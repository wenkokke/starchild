module Random_18_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 18 1
let layer_0 =
  { weights    = [ [~.0.00433195R]
                 ; [0.14391816R]
                 ; [~.0.22222725R]
                 ; [0.00374031R]
                 ; [0.41605979R]
                 ; [0.38586241R]
                 ; [~.0.37845290R]
                 ; [~.0.00972837R]
                 ; [~.0.24315381R]
                 ; [0.03975046R]
                 ; [~.0.11099291R]
                 ; [0.10967994R]
                 ; [0.13374585R]
                 ; [~.0.23568270R]
                 ; [0.19890678R]
                 ; [~.0.48625052R]
                 ; [0.10351443R]
                 ; [~.0.34679753R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 18 1 1
let model = NLast layer_0
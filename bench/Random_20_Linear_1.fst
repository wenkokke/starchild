module Random_20_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 20 1
let layer_0 =
  { weights    = [ [~.0.05666128R]
                 ; [0.47952348R]
                 ; [0.32198578R]
                 ; [0.30569690R]
                 ; [~.0.01512295R]
                 ; [0.33145612R]
                 ; [~.0.25876838R]
                 ; [0.11420172R]
                 ; [0.32698601R]
                 ; [0.05323821R]
                 ; [0.36299306R]
                 ; [~.0.08649385R]
                 ; [0.27373940R]
                 ; [~.0.28076848R]
                 ; [0.10986739R]
                 ; [0.50453478R]
                 ; [~.0.48268521R]
                 ; [~.0.29497409R]
                 ; [~.0.34068942R]
                 ; [0.49553961R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 20 1 1
let model = NLast layer_0
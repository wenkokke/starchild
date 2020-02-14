module Random_9_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 9 1
let layer_0 =
  { weights    = [ [~.0.22440624R]
                 ; [0.39324069R]
                 ; [~.0.18930703R]
                 ; [~.0.74784774R]
                 ; [0.30923963R]
                 ; [~.0.46388459R]
                 ; [0.40662551R]
                 ; [~.0.73599672R]
                 ; [0.00078875R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 9 1 1
let model = NLast layer_0
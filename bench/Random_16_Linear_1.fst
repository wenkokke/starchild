module Random_16_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 16 1
let layer_0 =
  { weights    = [ [0.18851697R]
                 ; [0.30807418R]
                 ; [~.0.11664495R]
                 ; [~.0.50341177R]
                 ; [~.0.18371984R]
                 ; [0.09715635R]
                 ; [~.0.45707947R]
                 ; [0.41068304R]
                 ; [0.42101395R]
                 ; [0.31927663R]
                 ; [0.23813915R]
                 ; [0.05147415R]
                 ; [0.07450938R]
                 ; [0.22871757R]
                 ; [~.0.02732044R]
                 ; [0.31924152R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 16 1 1
let model = NLast layer_0
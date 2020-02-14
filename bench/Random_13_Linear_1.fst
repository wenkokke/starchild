module Random_13_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 13 1
let layer_0 =
  { weights    = [ [0.12240338R]
                 ; [~.0.64168453R]
                 ; [~.0.11918217R]
                 ; [0.21463984R]
                 ; [~.0.10165298R]
                 ; [0.63651574R]
                 ; [~.0.39275655R]
                 ; [~.0.12948108R]
                 ; [0.63472652R]
                 ; [~.0.61764920R]
                 ; [~.0.33597079R]
                 ; [0.35512960R]
                 ; [~.0.08197045R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 13 1 1
let model = NLast layer_0
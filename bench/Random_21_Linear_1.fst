module Random_21_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 21 1
let layer_0 =
  { weights    = [ [~.0.50885051R]
                 ; [0.09575045R]
                 ; [~.0.07890052R]
                 ; [0.47506320R]
                 ; [0.34243160R]
                 ; [~.0.51891750R]
                 ; [0.40778542R]
                 ; [0.45768505R]
                 ; [~.0.49975130R]
                 ; [~.0.49747375R]
                 ; [~.0.43034381R]
                 ; [0.42160255R]
                 ; [~.0.33530766R]
                 ; [0.05017316R]
                 ; [0.36122078R]
                 ; [0.15862066R]
                 ; [~.0.00935256R]
                 ; [~.0.50069422R]
                 ; [~.0.08996075R]
                 ; [~.0.47671196R]
                 ; [~.0.38316172R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 21 1 1
let model = NLast layer_0
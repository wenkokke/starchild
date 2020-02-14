module Random_74_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 74 1
let layer_0 =
  { weights    = [ [0.11915988R]
                 ; [~.0.06505296R]
                 ; [0.26026246R]
                 ; [0.14841422R]
                 ; [0.01697654R]
                 ; [~.0.28141493R]
                 ; [0.23904607R]
                 ; [0.16912088R]
                 ; [~.0.18635300R]
                 ; [0.03470871R]
                 ; [~.0.03743429R]
                 ; [0.00537187R]
                 ; [~.0.06403151R]
                 ; [~.0.00820866R]
                 ; [~.0.15188532R]
                 ; [0.27184865R]
                 ; [0.01527113R]
                 ; [0.00169337R]
                 ; [~.0.07335871R]
                 ; [0.01971361R]
                 ; [~.0.20925587R]
                 ; [0.24602637R]
                 ; [~.0.21388939R]
                 ; [~.0.25200054R]
                 ; [~.0.26988193R]
                 ; [~.0.23148325R]
                 ; [0.20450050R]
                 ; [~.0.05692469R]
                 ; [0.07188460R]
                 ; [0.17548525R]
                 ; [0.19790125R]
                 ; [~.0.24394307R]
                 ; [0.12736946R]
                 ; [0.22899279R]
                 ; [~.0.11938733R]
                 ; [0.23728541R]
                 ; [~.0.25951561R]
                 ; [0.18530715R]
                 ; [~.0.21674135R]
                 ; [0.03130919R]
                 ; [0.26861784R]
                 ; [~.0.28029805R]
                 ; [~.0.08113767R]
                 ; [0.01107922R]
                 ; [0.26534542R]
                 ; [0.03386953R]
                 ; [0.06908029R]
                 ; [0.12704450R]
                 ; [0.26369664R]
                 ; [0.11653611R]
                 ; [~.0.20240590R]
                 ; [0.10810727R]
                 ; [~.0.19176978R]
                 ; [~.0.23049903R]
                 ; [~.0.09730999R]
                 ; [~.0.02296546R]
                 ; [~.0.02493751R]
                 ; [~.0.26144898R]
                 ; [~.0.12445709R]
                 ; [0.11431029R]
                 ; [0.24087891R]
                 ; [~.0.19171071R]
                 ; [~.0.04552029R]
                 ; [~.0.17551614R]
                 ; [0.24058428R]
                 ; [0.05902338R]
                 ; [0.23110405R]
                 ; [~.0.01784855R]
                 ; [~.0.21356362R]
                 ; [0.16273621R]
                 ; [0.22208652R]
                 ; [~.0.23849750R]
                 ; [~.0.15665087R]
                 ; [0.22182789R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 74 1 1
let model = NLast layer_0
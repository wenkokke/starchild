module Random_23_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 23 1
let layer_0 =
  { weights    = [ [~.0.36759257R]
                 ; [~.0.30922604R]
                 ; [0.49376011R]
                 ; [~.0.12710142R]
                 ; [~.0.41318476R]
                 ; [0.02591455R]
                 ; [0.05461538R]
                 ; [0.25319159R]
                 ; [~.0.11449897R]
                 ; [0.33981502R]
                 ; [~.0.39094794R]
                 ; [~.0.34350872R]
                 ; [~.0.43978786R]
                 ; [~.0.46947873R]
                 ; [~.0.07667875R]
                 ; [0.05720532R]
                 ; [0.21266651R]
                 ; [0.44965672R]
                 ; [0.04038131R]
                 ; [~.0.49848270R]
                 ; [~.0.42342055R]
                 ; [~.0.38874924R]
                 ; [0.35542619R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 23 1 1
let model = NLast layer_0
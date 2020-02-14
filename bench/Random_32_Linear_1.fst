module Random_32_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 32 1
let layer_0 =
  { weights    = [ [~.0.23329858R]
                 ; [~.0.10110196R]
                 ; [0.30515271R]
                 ; [~.0.40626168R]
                 ; [0.33896285R]
                 ; [~.0.10783076R]
                 ; [0.14666873R]
                 ; [~.0.00530136R]
                 ; [0.21060973R]
                 ; [0.18200564R]
                 ; [~.0.01717916R]
                 ; [~.0.35766378R]
                 ; [0.11783981R]
                 ; [0.21072656R]
                 ; [~.0.08597985R]
                 ; [~.0.33613583R]
                 ; [0.37425786R]
                 ; [0.00574076R]
                 ; [0.29902756R]
                 ; [0.08949512R]
                 ; [0.06175154R]
                 ; [~.0.23716612R]
                 ; [0.23461998R]
                 ; [0.35315692R]
                 ; [~.0.21550092R]
                 ; [0.11765307R]
                 ; [0.32233340R]
                 ; [0.18440443R]
                 ; [0.18125314R]
                 ; [~.0.22607297R]
                 ; [0.40693867R]
                 ; [0.05854839R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 32 1 1
let model = NLast layer_0
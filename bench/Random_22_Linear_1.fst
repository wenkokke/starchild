module Random_22_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 22 1
let layer_0 =
  { weights    = [ [0.13029689R]
                 ; [~.0.45982009R]
                 ; [0.47174823R]
                 ; [~.0.03190055R]
                 ; [~.0.45640641R]
                 ; [~.0.20992488R]
                 ; [0.48379982R]
                 ; [0.06355989R]
                 ; [0.20085031R]
                 ; [~.0.19658825R]
                 ; [~.0.09165895R]
                 ; [~.0.22139627R]
                 ; [~.0.29598993R]
                 ; [0.34608424R]
                 ; [~.0.27996078R]
                 ; [~.0.46208239R]
                 ; [0.18616730R]
                 ; [0.50763422R]
                 ; [~.0.36717600R]
                 ; [~.0.39479890R]
                 ; [0.17831105R]
                 ; [0.28497761R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 22 1 1
let model = NLast layer_0
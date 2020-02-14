module Random_25_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 25 1
let layer_0 =
  { weights    = [ [~.0.24166673R]
                 ; [0.18236357R]
                 ; [0.36873239R]
                 ; [0.01184955R]
                 ; [0.25298518R]
                 ; [~.0.13110259R]
                 ; [~.0.06043461R]
                 ; [~.0.33446997R]
                 ; [~.0.39807069R]
                 ; [0.41713566R]
                 ; [~.0.04340488R]
                 ; [0.30919743R]
                 ; [0.22781318R]
                 ; [~.0.10290191R]
                 ; [0.47494197R]
                 ; [~.0.33582073R]
                 ; [~.0.47347048R]
                 ; [0.36190856R]
                 ; [~.0.26109111R]
                 ; [0.00307670R]
                 ; [~.0.14923686R]
                 ; [0.10035640R]
                 ; [0.33697855R]
                 ; [0.28938544R]
                 ; [~.0.41643029R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 25 1 1
let model = NLast layer_0
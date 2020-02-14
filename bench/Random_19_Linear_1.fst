module Random_19_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 19 1
let layer_0 =
  { weights    = [ [~.0.05258057R]
                 ; [~.0.23708910R]
                 ; [~.0.15534881R]
                 ; [0.18496859R]
                 ; [0.44343770R]
                 ; [~.0.33419561R]
                 ; [~.0.26878339R]
                 ; [0.24622041R]
                 ; [0.54637849R]
                 ; [0.54324019R]
                 ; [~.0.20863178R]
                 ; [~.0.12111169R]
                 ; [~.0.06138489R]
                 ; [0.39712626R]
                 ; [~.0.30969638R]
                 ; [0.30399704R]
                 ; [~.0.01424497R]
                 ; [0.07269102R]
                 ; [0.09108692R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 19 1 1
let model = NLast layer_0
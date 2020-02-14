module Random_72_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 72 1
let layer_0 =
  { weights    = [ [~.0.09771870R]
                 ; [~.0.19753806R]
                 ; [~.0.22653094R]
                 ; [0.06738344R]
                 ; [0.24748912R]
                 ; [0.05597755R]
                 ; [0.27912459R]
                 ; [0.27763215R]
                 ; [~.0.14680247R]
                 ; [~.0.05452000R]
                 ; [0.10775557R]
                 ; [~.0.00436580R]
                 ; [0.17485091R]
                 ; [0.20030573R]
                 ; [0.03916746R]
                 ; [0.02608439R]
                 ; [~.0.16070981R]
                 ; [0.01242751R]
                 ; [~.0.06152688R]
                 ; [0.19649336R]
                 ; [0.04494831R]
                 ; [~.0.10970506R]
                 ; [~.0.07945669R]
                 ; [~.0.23508757R]
                 ; [~.0.28132153R]
                 ; [0.07120177R]
                 ; [0.20248249R]
                 ; [~.0.11715889R]
                 ; [~.0.08150426R]
                 ; [~.0.26699719R]
                 ; [0.25648311R]
                 ; [0.15280744R]
                 ; [0.19876158R]
                 ; [0.09435698R]
                 ; [0.07191145R]
                 ; [~.0.21847266R]
                 ; [0.06634790R]
                 ; [~.0.02973047R]
                 ; [~.0.19518769R]
                 ; [~.0.15847632R]
                 ; [~.0.14897390R]
                 ; [~.0.17433417R]
                 ; [0.25487468R]
                 ; [0.02887094R]
                 ; [~.0.21967402R]
                 ; [~.0.10283174R]
                 ; [~.0.15933682R]
                 ; [~.0.08323488R]
                 ; [0.20423695R]
                 ; [~.0.23438251R]
                 ; [~.0.15347695R]
                 ; [~.0.07643107R]
                 ; [0.24121341R]
                 ; [0.09917733R]
                 ; [0.03202572R]
                 ; [~.0.07662922R]
                 ; [~.0.18608239R]
                 ; [0.17451531R]
                 ; [~.0.10922946R]
                 ; [0.23718318R]
                 ; [0.26102892R]
                 ; [0.02314079R]
                 ; [~.0.12744820R]
                 ; [~.0.20585041R]
                 ; [~.0.21904674R]
                 ; [0.01088098R]
                 ; [~.0.13449110R]
                 ; [0.00634694R]
                 ; [~.0.09503688R]
                 ; [~.0.04523307R]
                 ; [0.25545838R]
                 ; [0.02974188R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 72 1 1
let model = NLast layer_0
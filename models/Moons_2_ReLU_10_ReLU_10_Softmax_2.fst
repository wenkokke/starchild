module Moons_2_ReLU_10_ReLU_10_Softmax_2

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 2 10
let layer_0 =
  { weights    = [ [0.26090273R; ~.0.45858756R; 0.57088947R; ~.0.63593054R; 0.46650061R; 0.02111257R; 0.24005814R; 0.21663126R; 0.62608415R; 0.60264724R]
                 ; [~.0.57872432R; ~.0.07560066R; ~.0.50844616R; 0.54337645R; 0.21963122R; 0.46095380R; 0.92406398R; ~.0.06031129R; ~.0.12884358R; ~.0.00029338R]
                 ]
  ; biases     = [~.0.05024179R; 0.01625573R; ~.0.01482861R; ~.0.04838249R; ~.0.03313666R; 0.14202106R; 0.11961030R; ~.0.17016345R; 0.25527662R; 0.19815370R]
  ; activation = ReLU
  }

val layer_1 : layer 10 10
let layer_1 =
  { weights    = [ [~.0.19987029R; ~.0.58877438R; ~.0.12333529R; 0.05962611R; 0.10027587R; ~.0.07429406R; 0.04447232R; 0.10535821R; 0.09405845R; ~.0.51506782R]
                 ; [~.0.16793868R; 0.27020925R; 0.31303993R; 0.22868456R; 0.09354160R; 0.50128627R; ~.0.30362076R; ~.0.05669608R; 0.18324842R; ~.0.29921207R]
                 ; [0.08326282R; ~.0.37528905R; 0.24455723R; ~.0.46356240R; ~.0.17788123R; 0.28288078R; 0.14273229R; 0.06454332R; ~.0.30321231R; ~.0.64654332R]
                 ; [0.31574380R; ~.0.09793551R; ~.0.40818745R; 0.33882484R; 0.39832631R; 0.64729333R; ~.0.38485193R; 0.03265686R; 0.24591531R; 0.64594626R]
                 ; [0.11025240R; 0.07380062R; ~.0.23065621R; ~.0.17998998R; 0.07137176R; ~.0.21768168R; 0.12926500R; 0.41474429R; 0.03463886R; 0.31863338R]
                 ; [0.38619104R; 0.73983645R; ~.0.19044128R; 0.22011463R; 0.25724119R; ~.0.09097294R; ~.0.37753484R; ~.0.75001764R; 0.27796748R; ~.0.04004008R]
                 ; [~.0.18594316R; 0.65027559R; ~.0.56291908R; ~.0.14057337R; 0.11150778R; 0.47230616R; ~.0.63350707R; ~.0.24110954R; ~.0.15067367R; ~.0.17484084R]
                 ; [0.00677953R; ~.0.39571404R; ~.0.01170955R; 0.15523177R; ~.0.53848565R; 0.37452355R; ~.0.12924203R; 0.01266055R; ~.0.49655578R; ~.0.41241109R]
                 ; [0.19078183R; 0.41507891R; 0.74150002R; ~.0.68179953R; ~.0.49780908R; ~.0.58592582R; 0.36851171R; ~.0.13585767R; 0.38946253R; ~.0.32148993R]
                 ; [~.0.43420538R; ~.0.08057901R; 0.17280889R; ~.0.73127371R; ~.0.11628725R; ~.0.27527788R; 0.47478673R; 0.48866075R; ~.0.25120828R; ~.0.18269818R]
                 ]
  ; biases     = [~.0.11130168R; 0.14569971R; 0.19298203R; 0.19943239R; ~.0.05124466R; 0.11780091R; 0.16080424R; 0.01166576R; ~.0.13393383R; 0.11459018R]
  ; activation = ReLU
  }

val layer_2 : layer 10 2
let layer_2 =
  { weights    = [ [0.49828568R; 0.56260496R]
                 ; [0.32408038R; ~.0.80332142R]
                 ; [0.00205269R; 0.76402068R]
                 ; [0.51811182R; ~.0.38970840R]
                 ; [0.34082466R; 0.21265335R]
                 ; [0.77558887R; 0.00651047R]
                 ; [~.0.64517701R; 0.51453155R]
                 ; [~.0.71860385R; 0.65942901R]
                 ; [~.0.02030531R; 0.16891216R]
                 ; [0.92696398R; ~.0.11589436R]
                 ]
  ; biases     = [0.00036507R; ~.0.00036507R]
  ; activation = Softmax
  }

val model : network 2 2 3
let model = NStep layer_0 (NStep layer_1 (NLast layer_2))
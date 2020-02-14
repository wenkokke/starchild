module Random_99_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 99 1
let layer_0 =
  { weights    = [ [~.0.06381842R]
                 ; [0.18755721R]
                 ; [~.0.17289358R]
                 ; [0.08436723R]
                 ; [0.23910631R]
                 ; [0.14980854R]
                 ; [0.04886635R]
                 ; [0.03214876R]
                 ; [0.12336002R]
                 ; [~.0.06695785R]
                 ; [0.08349673R]
                 ; [0.00259624R]
                 ; [~.0.17922086R]
                 ; [0.00181298R]
                 ; [0.12736510R]
                 ; [0.16201802R]
                 ; [0.01213135R]
                 ; [~.0.06681436R]
                 ; [0.06434999R]
                 ; [~.0.14845699R]
                 ; [0.10407047R]
                 ; [~.0.22377445R]
                 ; [0.10322304R]
                 ; [~.0.08961451R]
                 ; [0.04389139R]
                 ; [~.0.00322726R]
                 ; [0.03724824R]
                 ; [~.0.03113791R]
                 ; [0.23372225R]
                 ; [0.13805337R]
                 ; [~.0.19774500R]
                 ; [~.0.04242140R]
                 ; [~.0.20920180R]
                 ; [~.0.07599641R]
                 ; [~.0.03817382R]
                 ; [~.0.05104545R]
                 ; [0.01615454R]
                 ; [0.21467303R]
                 ; [~.0.12050458R]
                 ; [~.0.18315196R]
                 ; [0.06165971R]
                 ; [~.0.08854082R]
                 ; [0.03461395R]
                 ; [0.06518154R]
                 ; [0.04617320R]
                 ; [~.0.04044297R]
                 ; [0.09871463R]
                 ; [~.0.16028289R]
                 ; [0.08639519R]
                 ; [0.20938613R]
                 ; [~.0.15166733R]
                 ; [~.0.05188437R]
                 ; [0.10227256R]
                 ; [~.0.24456820R]
                 ; [0.03282340R]
                 ; [0.21845190R]
                 ; [0.14618932R]
                 ; [0.14762299R]
                 ; [~.0.20888755R]
                 ; [0.09824423R]
                 ; [0.09594212R]
                 ; [~.0.14191306R]
                 ; [0.01212271R]
                 ; [~.0.12027998R]
                 ; [0.10138522R]
                 ; [~.0.16200244R]
                 ; [~.0.12776613R]
                 ; [~.0.16554214R]
                 ; [0.00508206R]
                 ; [0.01061948R]
                 ; [~.0.17768988R]
                 ; [~.0.20148897R]
                 ; [~.0.07736404R]
                 ; [0.18723653R]
                 ; [~.0.06211968R]
                 ; [~.0.09614946R]
                 ; [0.10628252R]
                 ; [0.04504515R]
                 ; [0.11853580R]
                 ; [~.0.01022883R]
                 ; [~.0.03939083R]
                 ; [0.03752710R]
                 ; [~.0.03340006R]
                 ; [0.10758401R]
                 ; [~.0.01310983R]
                 ; [~.0.20410024R]
                 ; [~.0.06789185R]
                 ; [0.03339528R]
                 ; [~.0.06688210R]
                 ; [~.0.20277378R]
                 ; [~.0.20445898R]
                 ; [0.02584662R]
                 ; [0.12975742R]
                 ; [0.18412982R]
                 ; [0.11707033R]
                 ; [~.0.07099448R]
                 ; [~.0.11458068R]
                 ; [0.09993969R]
                 ; [0.07923062R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 99 1 1
let model = NLast layer_0
module Random_24_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 24 1
let layer_0 =
  { weights    = [ [~.0.21810851R]
                 ; [0.17765960R]
                 ; [~.0.45356590R]
                 ; [~.0.17196333R]
                 ; [0.32828680R]
                 ; [0.16573688R]
                 ; [~.0.26307330R]
                 ; [0.09933624R]
                 ; [~.0.15301743R]
                 ; [~.0.10697702R]
                 ; [0.26588681R]
                 ; [~.0.27473503R]
                 ; [~.0.40708455R]
                 ; [~.0.27520353R]
                 ; [0.23228940R]
                 ; [0.42504779R]
                 ; [~.0.15156838R]
                 ; [~.0.10307318R]
                 ; [~.0.12806234R]
                 ; [0.14037678R]
                 ; [0.00400415R]
                 ; [~.0.32943273R]
                 ; [~.0.17671162R]
                 ; [0.10374197R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 24 1 1
let model = NLast layer_0
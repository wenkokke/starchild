module StarChild.FullyConnected

open FStar.Real
open StarChild.LinearAlgebra

noeq type fully_connected r c = { bias: real; weights: matrix real r c }

val run_forwards : #r:nat -> #c:nat -> fully_connected r c -> vector real c -> Tot (vector real r)
let run_forwards #r #c l xs = l.bias +> (l.weights <* xs)

val predict : #r:nat -> #c:nat -> fully_connected r c -> vector real c -> Tot (vector bool r)
let predict #r #c l xs = map (fun y -> y >=. 0.0R) (run_forwards l xs)

module Example

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Layers.Class
open StarChild.Layers.FullyConnected

val example1 : fully_connected 2 1
let example1 = { bias = 0.184R; weights = [[0.194R; 0.195R]] }

let _ = assert (from_vec (run_forwards example1 [1.0R; 1.0R]) >=. 0.0R)
let _ = assert (forall x1 x2. (x1 >=. 0.0R /\ x2 >=. 0.0R) ==> (from_vec (run_forwards example1 [x1; x2]) >=. 0.0R))

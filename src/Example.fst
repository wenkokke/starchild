module Example

open FStar.Real
open StarChild.FullyConnected

val example1 : fully_connected 1 2
let example1 = { bias = 0.184R; weights = [[0.194R; 0.195R]] }

let _ = assert ((predict example1 [1.0R; 1.0R]) == [true])
let _ = assert (forall x1 x2. (x1 >=. 0.0R /\ x2 >=. 0.0R) ==> ((predict example1 [x1; x2]) == [true]))

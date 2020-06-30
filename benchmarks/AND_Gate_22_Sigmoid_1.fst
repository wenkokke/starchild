module AND_Gate_22_Sigmoid_1

#reset-options "--max_fuel 0 --z3rlimit 500"

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Network

val layer0 : layer 22 1
let layer0 =
  { weights    = (let v = [ (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ; (let v = [45454545.454545453R] in assert_norm (length v = 1); v)
                          ] in assert_norm (length v = 22); v)
  ; biases     = (let v = [~.977272727.272727251R] in assert_norm (length v = 1); v)
  ; activation = Sigmoid
  }

val model : network 22 1 1
let model = NLast layer0

let _ = assert_norm(run_network model (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 22); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [0.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 22); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 1.0R] in assert_norm (length v = 22); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 22); v) == [1.0R])

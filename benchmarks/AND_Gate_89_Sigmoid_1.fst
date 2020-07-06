module AND_Gate_89_Sigmoid_1

#reset-options "--max_fuel 0 --z3rlimit 500"

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Network

val layer0 : layer 89 1
let layer0 =
  { weights    = (let v = [ (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ; (let v = [11235955.056179775R] in assert_norm (length v = 1); v)
                          ] in assert_norm (length v = 89); v)
  ; biases     = (let v = [~.994382022.471910119R] in assert_norm (length v = 1); v)
  ; activation = Sigmoid
  }

val model : network 89 1 1
let model = NLast layer0

let _ = assert_norm(run_network model (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 89); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [0.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 89); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 1.0R] in assert_norm (length v = 89); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 89); v) == [1.0R])
module AND_Gate_13_Sigmoid_1

#reset-options "--max_fuel 0 --z3rlimit 500"

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Network

val layer0 : layer 13 1
let layer0 =
  { weights    = (let v = [ (let v = [76923076.923076928R] in assert_norm (length v = 1); v)
                          ; (let v = [76923076.923076928R] in assert_norm (length v = 1); v)
                          ; (let v = [76923076.923076928R] in assert_norm (length v = 1); v)
                          ; (let v = [76923076.923076928R] in assert_norm (length v = 1); v)
                          ; (let v = [76923076.923076928R] in assert_norm (length v = 1); v)
                          ; (let v = [76923076.923076928R] in assert_norm (length v = 1); v)
                          ; (let v = [76923076.923076928R] in assert_norm (length v = 1); v)
                          ; (let v = [76923076.923076928R] in assert_norm (length v = 1); v)
                          ; (let v = [76923076.923076928R] in assert_norm (length v = 1); v)
                          ; (let v = [76923076.923076928R] in assert_norm (length v = 1); v)
                          ; (let v = [76923076.923076928R] in assert_norm (length v = 1); v)
                          ; (let v = [76923076.923076928R] in assert_norm (length v = 1); v)
                          ; (let v = [76923076.923076928R] in assert_norm (length v = 1); v)
                          ] in assert_norm (length v = 13); v)
  ; biases     = (let v = [~.961538461.538461566R] in assert_norm (length v = 1); v)
  ; activation = Sigmoid
  }

val model : network 13 1 1
let model = NLast layer0

let _ = assert_norm(run_network model (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 13); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [0.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 13); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 1.0R] in assert_norm (length v = 13); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 13); v) == [1.0R])

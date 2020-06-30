module AND_Gate_53_Sigmoid_1

#reset-options "--max_fuel 0 --z3rlimit 500"

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Network

val layer0 : layer 53 1
let layer0 =
  { weights    = (let v = [ (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ; (let v = [18867924.528301887R] in assert_norm (length v = 1); v)
                          ] in assert_norm (length v = 53); v)
  ; biases     = (let v = [~.990566037.735849023R] in assert_norm (length v = 1); v)
  ; activation = Sigmoid
  }

val model : network 53 1 1
let model = NLast layer0

let _ = assert_norm(run_network model (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 53); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [0.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 53); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 1.0R] in assert_norm (length v = 53); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 53); v) == [1.0R])

module AND_Gate_68_Sigmoid_1

#reset-options "--max_fuel 0 --z3rlimit 500"

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Network

val layer0 : layer 68 1
let layer0 =
  { weights    = (let v = [ (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ; (let v = [14705882.352941176R] in assert_norm (length v = 1); v)
                          ] in assert_norm (length v = 68); v)
  ; biases     = (let v = [~.992647058.823529363R] in assert_norm (length v = 1); v)
  ; activation = Sigmoid
  }

val model : network 68 1 1
let model = NLast layer0

let _ = assert_norm(run_network model (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 68); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [0.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 68); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 1.0R] in assert_norm (length v = 68); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 68); v) == [1.0R])

module AND_Gate_67_Sigmoid_1

#reset-options "--max_fuel 0 --z3rlimit 500"

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Network

val layer0 : layer 67 1
let layer0 =
  { weights    = (let v = [ (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ; (let v = [14925373.134328358R] in assert_norm (length v = 1); v)
                          ] in assert_norm (length v = 67); v)
  ; biases     = (let v = [~.992537313.432835817R] in assert_norm (length v = 1); v)
  ; activation = Sigmoid
  }

val model : network 67 1 1
let model = NLast layer0

let _ = assert_norm(run_network model (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R] in assert_norm (length v = 67); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [0.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 67); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 0.0R; 1.0R] in assert_norm (length v = 67); v) == [0.0R])

let _ = assert_norm(run_network model (let v = [1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R; 1.0R] in assert_norm (length v = 67); v) == [1.0R])

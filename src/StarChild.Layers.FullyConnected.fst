module StarChild.Layers.FullyConnected

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Layers.Class

noeq type fully_connected (i:nat) (o:nat) = {bias: real; weights: matrix real o i}

// val run_forwards_fully_connected : #i:nat -> #o:nat -> l:fully_connected i o -> xs:vector real i -> Tot (vector real o)
// let run_forwards_fully_connected #i #o l xs = l.bias +> (l.weights <* xs)

// val layer_fully_connected : layer fully_connected
// let layer_fully_connected = {run_forwards = run_forwards_fully_connected}

instance layer_fully_connected (inputs:nat) (outputs:nat) : layer (fully_connected inputs outputs) = {
  inputs       = inputs;
  outputs      = outputs;
  run_forwards = fun l xs -> l.bias +> (l.weights <* xs)
}

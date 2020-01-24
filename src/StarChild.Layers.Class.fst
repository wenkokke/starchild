module StarChild.Layers.Class

open FStar.Real
open StarChild.LinearAlgebra

// noeq type layer l = {
//   run_forwards : #i:nat -> #o:nat -> l i o -> vector real i -> Tot (vector real o)
// }

class layer l = {
  inputs       : nat;
  outputs      : nat;
  run_forwards : l -> vector real inputs -> Tot (vector real outputs)
}

module Random_42_Linear_1

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 42 1
let layer_0 =
  { weights    = [ [~.0.25220823R]
                 ; [0.31920737R]
                 ; [0.28167069R]
                 ; [0.21580917R]
                 ; [~.0.23250911R]
                 ; [0.28511155R]
                 ; [~.0.33019617R]
                 ; [~.0.13115527R]
                 ; [~.0.36228919R]
                 ; [0.15981513R]
                 ; [~.0.35069051R]
                 ; [~.0.33382276R]
                 ; [0.00963458R]
                 ; [0.27538007R]
                 ; [0.15426016R]
                 ; [~.0.07844916R]
                 ; [~.0.20421597R]
                 ; [0.05794415R]
                 ; [~.0.24929944R]
                 ; [0.27808714R]
                 ; [0.33438742R]
                 ; [~.0.25999224R]
                 ; [~.0.36310008R]
                 ; [~.0.10965571R]
                 ; [~.0.03680030R]
                 ; [0.14332759R]
                 ; [0.19856167R]
                 ; [~.0.12796043R]
                 ; [0.24130863R]
                 ; [~.0.03802806R]
                 ; [~.0.00126126R]
                 ; [0.23599207R]
                 ; [~.0.13048670R]
                 ; [0.19191915R]
                 ; [0.32083684R]
                 ; [0.31516534R]
                 ; [~.0.26458058R]
                 ; [~.0.16763753R]
                 ; [0.31840473R]
                 ; [0.33780676R]
                 ; [~.0.25578406R]
                 ; [~.0.36638194R]
                 ]
  ; biases     = [0.00000000R]
  ; activation = Linear
  }

val model : network 42 1 1
let model = NLast layer_0
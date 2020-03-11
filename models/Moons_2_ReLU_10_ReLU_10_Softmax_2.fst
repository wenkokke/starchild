module Moons_2_ReLU_10_ReLU_10_Softmax_2

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 2 10
let layer_0 =
  { weights    = (let v = [ (let v = [~.0.60162920R; ~.0.66596055R; 0.80959648R; ~.0.40390602R; 0.52943254R; ~.0.11285112R; ~.0.60419422R; ~.0.61724132R; ~.0.75467408R; 0.28837052R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.73556495R; 0.62208074R; 0.47286895R; ~.0.18813598R; ~.0.80687010R; 0.15140831R; ~.0.25342980R; ~.0.24226397R; 0.41986972R; 0.38449386R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 2); v)
  ; biases     = (let v = [0.12307866R; ~.0.04164413R; 0.12290660R; ~.0.04281163R; 0.21370845R; ~.0.02316430R; 0.05156941R; 0.01572460R; 0.19463602R; ~.0.05747268R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_1 : layer 10 10
let layer_1 =
  { weights    = (let v = [ (let v = [~.0.09553649R; 0.30554008R; 0.34166932R; ~.0.29172856R; ~.0.16191112R; ~.0.03109568R; 0.26054403R; 0.74365056R; 0.76085442R; 0.53304958R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.06649639R; 0.13972054R; 0.12853214R; 0.00429843R; 0.25747320R; ~.0.31588677R; 0.40586925R; 0.67047161R; 0.36605620R; ~.0.45099974R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.06843834R; 0.21571073R; ~.0.02672021R; ~.0.01580932R; 0.02208034R; 0.02576627R; 0.48202899R; ~.0.10978376R; 0.43528819R; ~.0.32066512R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.41368407R; 0.73803329R; 0.02871827R; ~.0.51135153R; ~.0.23032089R; ~.0.46623442R; 0.07079420R; ~.0.32804996R; 0.78345394R; ~.0.42929524R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.38558972R; 0.11574937R; 0.71419090R; 0.21698332R; 0.52769178R; 0.72366071R; 0.32651281R; 0.06641269R; ~.0.34323475R; 0.25583065R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.41120109R; 0.16611584R; 0.30416107R; ~.0.67188030R; ~.0.38968626R; ~.0.45237675R; ~.0.26600879R; 0.42152968R; 0.15006985R; ~.0.22132397R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.11933178R; ~.0.23375785R; ~.0.08195907R; ~.0.32467905R; 0.02597633R; 0.23473726R; ~.0.40637848R; 0.54460782R; 0.52025414R; 0.23715623R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.16031593R; 0.04706094R; ~.0.30027664R; ~.0.05618867R; ~.0.48969045R; ~.0.25984573R; ~.0.08020806R; 0.13906536R; ~.0.22158381R; 0.41702527R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.06182175R; 0.09246343R; ~.0.56448632R; ~.0.42336664R; 0.02135172R; 0.28479627R; ~.0.59888005R; 0.70023894R; ~.0.01003194R; ~.0.50373745R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.33538660R; 0.58978587R; ~.0.09721485R; 0.37729639R; 0.15120509R; ~.0.33272263R; ~.0.28518301R; 0.64127886R; 0.17501569R; 0.30284292R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [~.0.07052661R; ~.0.02235721R; ~.0.03919867R; 0.14461042R; ~.0.05366326R; 0.15843378R; ~.0.01309018R; 0.09534474R; 0.12514094R; ~.0.10588918R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_2 : layer 10 2
let layer_2 =
  { weights    = (let v = [ (let v = [~.0.56420952R; 0.56522274R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.47953889R; ~.0.06260866R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.24271521R; 0.43761602R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.49922636R; ~.0.30969051R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.44705734R; 0.77954090R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.81024516R; 0.42713290R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.32028660R; 0.02349111R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.83410102R; 0.21955283R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.11132035R; ~.0.58611715R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.57651323R; ~.0.35003856R]
                             in assert_norm (length v = 2); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [0.07756357R; ~.0.07756357R]
                  in assert_norm (length v = 2); v)
  ; activation = Softmax
  }

val model : network 2 2 3
let model = NStep layer_0 (NStep layer_1 (NLast layer_2))
module SwissRolls_3_ReLU_10_ReLU_10_Softmax_2

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 3 10
let layer_0 =
  { weights    = (let v = [ (let v = [0.40472111R; ~.0.52562034R; 0.19727713R; ~.0.32263729R; 0.38197497R; ~.0.67909360R; ~.0.08048999R; ~.0.38762850R; ~.0.33137456R; 0.07372662R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.42036909R; ~.0.07283115R; 0.07867832R; 0.23676087R; ~.0.20754158R; 0.45631069R; 0.43224975R; 0.47539368R; ~.0.02203439R; ~.0.43500805R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.31115982R; ~.0.05012630R; 0.16901353R; ~.0.32917371R; ~.0.06759617R; 0.61381161R; 0.44390202R; ~.0.26640943R; 0.49413848R; ~.0.21211185R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 3); v)
  ; biases     = (let v = [~.0.10818225R; ~.0.07218680R; 0.07552077R; 0.09385789R; ~.0.08522023R; 0.00892882R; ~.0.08332580R; ~.0.15775231R; 0.17234877R; 0.09722519R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_1 : layer 10 10
let layer_1 =
  { weights    = (let v = [ (let v = [0.25681487R; 0.21028687R; 0.02650955R; 0.18296890R; ~.0.02889912R; 0.26033190R; 0.21910158R; 0.30151618R; 0.39681178R; 0.51478833R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.13743019R; ~.0.48805383R; 0.21347553R; ~.0.08951409R; 0.36461869R; ~.0.42860016R; 0.36073014R; ~.0.23614670R; ~.0.34087068R; ~.0.25936800R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.23165411R; ~.0.41928181R; ~.0.42915618R; ~.0.25090146R; ~.0.37734565R; ~.0.18587212R; ~.0.29996562R; ~.0.24369325R; ~.0.27751780R; 0.03790708R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.37701437R; ~.0.41063565R; 0.34421840R; ~.0.03282190R; ~.0.01132386R; 0.26238021R; ~.0.58075196R; 0.24824186R; ~.0.03750290R; ~.0.00079381R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.09306204R; 0.32056698R; 0.02475700R; ~.0.24564627R; 0.24051216R; 0.07465926R; ~.0.06894886R; ~.0.32818168R; ~.0.19475651R; ~.0.43752530R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.38206884R; 0.37776357R; 0.06970044R; 0.13228479R; ~.0.26189980R; ~.0.03573067R; ~.0.56810999R; ~.0.07713104R; 0.48641503R; ~.0.09351018R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.02418271R; ~.0.08831965R; ~.0.17337382R; 0.47028372R; 0.19964679R; ~.0.30901024R; ~.0.17313033R; ~.0.22598633R; 0.35998121R; ~.0.31408170R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.40786439R; ~.0.27044237R; ~.0.43324566R; 0.54791814R; ~.0.09093478R; 0.19076823R; 0.43242502R; ~.0.14313792R; 0.44213635R; ~.0.23126903R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.02837587R; ~.0.47615546R; ~.0.45537111R; ~.0.40053114R; 0.06254593R; ~.0.24524449R; ~.0.55036008R; 0.43942338R; 0.23628265R; 0.45792520R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.24973926R; ~.0.63472569R; ~.0.44888192R; 0.45827773R; ~.0.50958419R; 0.05003968R; ~.0.32229742R; 0.42712277R; 0.00695221R; ~.0.52595073R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [~.0.10872288R; ~.0.07121765R; ~.0.08332079R; ~.0.12831393R; ~.0.08348464R; ~.0.03042327R; ~.0.08637305R; ~.0.03928400R; 0.11194659R; ~.0.04876751R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_2 : layer 10 2
let layer_2 =
  { weights    = (let v = [ (let v = [~.0.01914878R; ~.0.26935810R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.29726428R; 0.06264430R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.04187138R; 0.57121259R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.09740116R; ~.0.13178895R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.56940103R; 0.07096596R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.46542108R; ~.0.33441374R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.52945930R; ~.0.06700927R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.37182021R; ~.0.39239940R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.26028666R; ~.0.05360510R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.07536322R; ~.0.65900934R]
                             in assert_norm (length v = 2); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [~.0.10426753R; 0.10426755R]
                  in assert_norm (length v = 2); v)
  ; activation = Softmax
  }

val model : network 3 2 3
let model = NStep layer_0 (NStep layer_1 (NLast layer_2))
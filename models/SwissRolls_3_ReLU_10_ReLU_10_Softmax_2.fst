module SwissRolls_3_ReLU_10_ReLU_10_Softmax_2

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 3 10
let layer_0 =
  { weights    = (let v = [ (let v = [~.0.56099349R; 0.49853024R; ~.0.00428177R; 0.49408528R; 0.00818986R; 0.05350067R; ~.0.30891919R; ~.0.60075068R; 0.21564969R; ~.0.29730567R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.39651531R; ~.0.44521329R; 0.00483279R; ~.0.67900872R; ~.0.41799459R; ~.0.30546671R; 0.62643552R; ~.0.45872679R; 0.02138718R; ~.0.46433371R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.13126598R; 0.04143289R; 0.12641522R; ~.0.52874786R; ~.0.48812604R; 0.16683707R; ~.0.28656831R; 0.09540479R; 0.11846426R; 0.42323491R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 3); v)
  ; biases     = (let v = [~.0.06225783R; ~.0.02544662R; ~.0.01303268R; ~.0.06207247R; ~.0.11597482R; ~.0.05564212R; ~.0.04350462R; ~.0.06418921R; ~.0.21713032R; ~.0.10883126R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_1 : layer 10 10
let layer_1 =
  { weights    = (let v = [ (let v = [0.38960230R; ~.0.03367838R; ~.0.32672438R; 0.11454495R; 0.36266142R; 0.12428747R; 0.30123433R; 0.11978677R; 0.26426306R; 0.25810790R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.03342078R; 0.33887646R; ~.0.20782852R; ~.0.49032205R; 0.53358668R; 0.36040944R; 0.44521064R; 0.07162457R; ~.0.04382353R; ~.0.10183263R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.37082371R; 0.22191995R; ~.0.18831879R; 0.10084295R; 0.13275133R; ~.0.37936938R; 0.47215477R; 0.27003658R; ~.0.13705865R; ~.0.25209174R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.15148361R; 0.13431916R; 0.05932431R; 0.25700518R; ~.0.28946549R; 0.49271983R; ~.0.37898266R; 0.13654417R; ~.0.33679533R; ~.0.01179439R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.24556044R; ~.0.26401877R; 0.36175430R; ~.0.51644135R; ~.0.64577448R; 0.16169694R; 0.01807680R; 0.42556670R; 0.06174946R; 0.04010784R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.02631618R; ~.0.05177568R; ~.0.44968125R; ~.0.17333113R; 0.03553081R; ~.0.22626624R; ~.0.40589428R; ~.0.37244403R; ~.0.25434750R; ~.0.32645583R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.50001085R; 0.43818137R; ~.0.15141056R; ~.0.09716979R; 0.30785978R; 0.44157991R; 0.50335586R; 0.46746746R; ~.0.39250788R; ~.0.21704391R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.01394369R; 0.28028867R; ~.0.04932200R; 0.51219285R; 0.14159484R; ~.0.42814687R; ~.0.42601034R; 0.26326358R; ~.0.45876437R; 0.33892533R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.24907412R; ~.0.24882844R; 0.26236776R; 0.44090992R; ~.0.43305185R; 0.44434306R; 0.27680656R; 0.07179391R; ~.0.22934315R; 0.27354872R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.19133711R; 0.34176061R; 0.05315295R; 0.27991077R; ~.0.20123257R; ~.0.33917737R; ~.0.01138046R; 0.50005513R; ~.0.07527085R; 0.27644682R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [0.24010327R; 0.23488392R; 0.20341265R; ~.0.10155874R; ~.0.21901071R; ~.0.22528367R; ~.0.27257979R; ~.0.22986075R; ~.0.07568348R; 0.05952526R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_2 : layer 10 2
let layer_2 =
  { weights    = (let v = [ (let v = [~.0.22636439R; 0.54041249R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.47748157R; 0.03679001R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.40345237R; 0.35915792R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.47209185R; ~.0.59514785R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.01846489R; ~.0.60390753R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.33538529R; ~.0.17840317R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.07827569R; ~.0.16563840R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.33141798R; ~.0.21034935R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.52589697R; 0.00570433R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.22603446R; 0.47139609R]
                             in assert_norm (length v = 2); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [~.0.23363385R; 0.23363385R]
                  in assert_norm (length v = 2); v)
  ; activation = Softmax
  }

val model : network 3 2 3
let model = NStep layer_0 (NStep layer_1 (NLast layer_2))
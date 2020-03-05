module Moons_2_ReLU_10_ReLU_10_Softmax_2

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 2 10
let layer_0 =
  { weights    = (let v = [ (let v = [0.07798122R; ~.0.06008201R; ~.0.08002245R; 0.07257424R; 0.10285722R; 0.42829448R; 0.32523039R; 0.17866790R; ~.0.26079288R; ~.0.70512003R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.63660854R; 0.46825808R; 0.34639052R; 0.52448523R; ~.0.65036052R; ~.0.12864214R; ~.0.44625539R; ~.0.25350159R; 0.67732912R; ~.0.13301061R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 2); v)
  ; biases     = (let v = [0.17088710R; 0.17349389R; 0.17459634R; ~.0.02859061R; 0.28498471R; 0.03927086R; 0.18082188R; ~.0.10381511R; 0.15329553R; 0.04187069R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_1 : layer 10 10
let layer_1 =
  { weights    = (let v = [ (let v = [0.06808510R; 0.73748666R; ~.0.49184805R; 0.14098416R; 0.22745907R; ~.0.36370775R; ~.0.01533887R; 0.15668745R; ~.0.04021752R; 0.19385549R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.24184209R; 0.14337584R; 0.34475529R; 0.16480419R; ~.0.04127017R; 0.54078662R; ~.0.16605222R; ~.0.19265102R; 0.38098603R; ~.0.36240807R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.42517206R; 0.19126037R; 0.54269403R; 0.42424828R; ~.0.42717758R; 0.68914747R; ~.0.12299320R; ~.0.04103837R; 0.52243763R; ~.0.21898767R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.08559364R; ~.0.57465792R; ~.0.29037994R; 0.03602348R; 0.15133125R; 0.18565857R; ~.0.08536337R; ~.0.52005607R; 0.72536981R; 0.12780304R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.28061098R; 0.57810479R; ~.0.05079751R; 0.12114944R; ~.0.28540599R; 0.12426585R; ~.0.48074549R; 0.12982023R; ~.0.04518568R; 0.61061764R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.41738173R; 0.27537981R; 0.56117082R; 0.23327520R; ~.0.36093992R; 0.18210080R; 0.12208895R; 0.21314889R; 0.19841023R; 0.04876641R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.00074602R; 0.45583481R; ~.0.47295392R; ~.0.02847246R; ~.0.27556592R; ~.0.30319944R; ~.0.21852766R; 0.54367906R; ~.0.24054927R; 0.60003310R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.31494460R; 0.03312276R; ~.0.39256409R; 0.27285206R; ~.0.11153685R; 0.41534224R; 0.33261850R; ~.0.12828232R; ~.0.02965867R; ~.0.01259829R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.32848603R; ~.0.12398930R; 0.56798977R; 0.60668659R; 0.14064264R; 0.18232056R; ~.0.22509123R; 0.06720772R; ~.0.01711033R; ~.0.39994201R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.52334684R; ~.0.02543271R; 0.22387953R; 0.20876761R; ~.0.42626098R; 0.34083953R; ~.0.19732928R; ~.0.05963045R; 0.72309655R; 0.21639477R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [~.0.05917651R; 0.14935161R; 0.16627558R; ~.0.07344734R; ~.0.04192463R; 0.01989099R; ~.0.06091394R; 0.12630071R; 0.06158528R; 0.15434100R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_2 : layer 10 2
let layer_2 =
  { weights    = (let v = [ (let v = [0.45000848R; 0.09151873R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.43091083R; 0.62001133R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.61291265R; ~.0.43723074R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.06746885R; ~.0.60184675R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.28401589R; 0.01014053R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.45850003R; ~.0.23126557R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.15066589R; ~.0.45905793R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.06983449R; 0.87644333R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.71562827R; ~.0.08634271R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.04496114R; 0.90581590R]
                             in assert_norm (length v = 2); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [~.0.07494693R; 0.07494692R]
                  in assert_norm (length v = 2); v)
  ; activation = Softmax
  }

val model : network 2 2 3
let model = NStep layer_0 (NStep layer_1 (NLast layer_2))
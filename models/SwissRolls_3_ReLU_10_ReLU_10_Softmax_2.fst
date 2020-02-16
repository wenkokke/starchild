module SwissRolls_3_ReLU_10_ReLU_10_Softmax_2

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 3 10
let layer_0 =
  { weights    = (let v = [ (let v = [0.22081327R; 0.01161031R; ~.0.01494247R; ~.0.62775481R; ~.0.01757571R; ~.0.35999700R; ~.0.57409734R; ~.0.51642603R; 0.64931339R; ~.0.55332756R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.49322832R; ~.0.57783782R; ~.0.04982035R; 0.46098346R; ~.0.05708596R; ~.0.45342940R; 0.22907478R; 0.23372789R; ~.0.26562196R; ~.0.44159552R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.59698063R; 0.25060174R; 0.47454101R; 0.57262862R; 0.51016724R; ~.0.06659481R; 0.21890971R; 0.52660394R; ~.0.41711724R; ~.0.50281990R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 3); v)
  ; biases     = (let v = [0.02091795R; 0.04371032R; 0.01482497R; ~.0.17663077R; ~.0.08917059R; ~.0.16864134R; ~.0.17579974R; 0.03633788R; ~.0.15739013R; ~.0.03979097R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_1 : layer 10 10
let layer_1 =
  { weights    = (let v = [ (let v = [~.0.46668777R; 0.40392223R; 0.39741957R; 0.36648348R; ~.0.16575424R; 0.20600551R; ~.0.20112276R; 0.00386329R; ~.0.43329906R; ~.0.50855207R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.13331334R; ~.0.11555694R; ~.0.01061483R; 0.16532524R; ~.0.40982908R; ~.0.56356698R; 0.26567635R; 0.10025856R; 0.13131271R; ~.0.22061098R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.23014949R; ~.0.26596159R; 0.27160010R; ~.0.30311611R; ~.0.35050422R; 0.30806586R; 0.43967676R; ~.0.17426096R; 0.25687063R; 0.02447181R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.13191871R; 0.32524809R; 0.02030877R; ~.0.04949298R; 0.40995234R; ~.0.35426763R; ~.0.25941324R; ~.0.17278367R; ~.0.10431670R; 0.36013553R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.56432301R; 0.31236082R; 0.08179893R; ~.0.17032287R; 0.44134691R; ~.0.35934725R; ~.0.28487286R; ~.0.48240831R; ~.0.50977260R; ~.0.04027895R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.57976377R; ~.0.08202738R; ~.0.04358214R; 0.28363854R; 0.22483987R; 0.22547147R; ~.0.22907497R; 0.44157737R; 0.43183783R; ~.0.36764058R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.11579160R; 0.28256467R; 0.07841894R; ~.0.46734360R; 0.06413672R; 0.19078191R; ~.0.01505623R; 0.51657754R; ~.0.37240392R; 0.18886021R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.25964090R; 0.47789091R; 0.25701833R; ~.0.24875142R; ~.0.12293432R; 0.26554015R; 0.23011167R; ~.0.08250313R; 0.04056643R; 0.39702180R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.09638062R; ~.0.02069692R; ~.0.28300694R; ~.0.00650145R; 0.28487286R; 0.08809005R; ~.0.42906097R; ~.0.02552473R; ~.0.22381566R; ~.0.21963221R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.52330315R; 0.01508637R; ~.0.00444175R; ~.0.07472642R; ~.0.38034806R; ~.0.15224309R; ~.0.47838748R; 0.50987309R; 0.44712609R; 0.41855296R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [~.0.27418146R; ~.0.24399601R; 0.10788871R; ~.0.14757465R; ~.0.20161562R; 0.01657175R; ~.0.04668409R; ~.0.16492462R; ~.0.01867960R; 0.11112532R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_2 : layer 10 2
let layer_2 =
  { weights    = (let v = [ (let v = [0.43561846R; 0.06145435R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.65813595R; 0.50312930R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.08356897R; 0.43412372R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.51022118R; 0.01170749R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.76187611R; ~.0.14582603R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.49466801R; 0.15543491R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.17550132R; 0.16676648R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.06931194R; ~.0.44923845R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.34626952R; 0.59097785R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.11768331R; 0.57434541R]
                             in assert_norm (length v = 2); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [~.0.17451335R; 0.17451337R]
                  in assert_norm (length v = 2); v)
  ; activation = Softmax
  }

val model : network 3 2 3
let model = NStep layer_0 (NStep layer_1 (NLast layer_2))
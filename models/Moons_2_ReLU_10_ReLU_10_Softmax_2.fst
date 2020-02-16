module Moons_2_ReLU_10_ReLU_10_Softmax_2

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 2 10
let layer_0 =
  { weights    = (let v = [ (let v = [0.22502162R; 0.76529229R; ~.0.79503220R; 0.54283077R; ~.0.08205321R; ~.0.66829836R; ~.0.00319793R; 0.63526314R; ~.0.04132739R; ~.0.29450971R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.29338628R; ~.0.25728625R; 0.22444485R; 0.04551158R; 0.89575708R; ~.0.49685293R; 0.40792397R; ~.0.56649148R; ~.0.07588144R; ~.0.51086086R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 2); v)
  ; biases     = (let v = [0.21694657R; 0.22872500R; 0.08561636R; 0.00018818R; 0.17331283R; 0.02857288R; 0.13208000R; ~.0.02642749R; ~.0.05167945R; ~.0.13812418R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_1 : layer 10 10
let layer_1 =
  { weights    = (let v = [ (let v = [0.19771166R; 0.29184017R; ~.0.67271066R; 0.17472544R; 0.53919208R; ~.0.44940621R; 0.07066834R; ~.0.46203211R; ~.0.33165774R; 0.46572641R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.04736726R; 0.38391876R; ~.0.26690698R; 0.33362183R; 0.32428902R; 0.31866166R; ~.0.19524464R; ~.0.40042546R; 0.21021231R; 0.28514224R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.32431939R; 0.36880735R; 0.39781618R; ~.0.45771825R; 0.15718918R; 0.55617982R; 0.13506824R; 0.66018856R; 0.30047691R; ~.0.07781969R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.16769207R; ~.0.10918719R; ~.0.41484922R; ~.0.44646975R; ~.0.34424454R; 0.42969048R; ~.0.17399457R; ~.0.14737126R; ~.0.41033745R; 0.21664955R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.42033032R; ~.0.40324259R; 0.09166555R; ~.0.14482684R; ~.0.21676433R; 0.62978989R; ~.0.33301783R; 0.10702232R; 0.68912333R; ~.0.79322302R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.13987103R; ~.0.40567234R; 0.53649193R; 0.32275382R; ~.0.21530767R; 0.33373404R; ~.0.33120319R; 0.49348572R; ~.0.24701172R; 0.34264499R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.54045546R; ~.0.44158506R; ~.0.20418614R; ~.0.62759298R; ~.0.00795240R; 0.48448300R; ~.0.08620861R; 0.04983306R; 0.38868770R; ~.0.46063194R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.27865255R; 0.25716436R; ~.0.42287341R; ~.0.44887745R; 0.16321014R; ~.0.52540267R; ~.0.10752738R; ~.0.18000412R; 0.22011259R; 0.03725457R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.46005106R; ~.0.14952669R; 0.44561711R; ~.0.24223763R; 0.17771173R; ~.0.50640780R; 0.21903414R; 0.11806068R; 0.48947728R; 0.46179321R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.14678578R; ~.0.31432498R; 0.20710497R; ~.0.27829137R; ~.0.53821814R; ~.0.22865921R; 0.11954963R; ~.0.30943161R; ~.0.21005976R; ~.0.12471840R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [~.0.00890102R; 0.18381734R; 0.08915377R; ~.0.05496662R; 0.12648681R; 0.11334576R; 0.00000000R; ~.0.00362810R; ~.0.01413037R; 0.22339791R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_2 : layer 10 2
let layer_2 =
  { weights    = (let v = [ (let v = [0.49942002R; 0.44927466R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.57830703R; 0.83107930R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.44991672R; ~.0.26670319R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.12953845R; ~.0.21827777R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.58700013R; ~.0.04810177R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.85199767R; ~.0.62315601R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.28680527R; 0.15446872R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.62243134R; 0.30693156R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.67352545R; ~.0.07944732R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.91210163R; ~.0.14894192R]
                             in assert_norm (length v = 2); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [~.0.09894688R; 0.09894690R]
                  in assert_norm (length v = 2); v)
  ; activation = Softmax
  }

val model : network 2 2 3
let model = NStep layer_0 (NStep layer_1 (NLast layer_2))
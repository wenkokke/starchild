module StarChild.MNIST_PCA_25_ReLU_10_Softmax_10

open FStar.Real
open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 25 10
let layer_0 =
  { weights    = (let v = [ (let v = [~.0.63999873R; 0.18827796R; ~.1.07873404R; 0.31953591R; ~.0.45966876R; ~.0.23401555R; 0.66155308R; ~.0.53629351R; 0.53915757R; 0.78416306R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.78752744R; 0.52570111R; 0.03409606R; ~.0.89905077R; 1.43578839R; ~.0.25481164R; ~.0.43541312R; ~.0.16818915R; ~.1.00342786R; 0.81709290R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.33499783R; ~.0.18541417R; 0.45537424R; 0.20942573R; 0.05083949R; 0.30976102R; 0.57118613R; ~.0.05859441R; ~.0.56725836R; ~.0.41134328R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.88456994R; 0.05910671R; ~.0.73807704R; 0.41823608R; ~.0.40744352R; 0.95827508R; ~.0.41125384R; ~.0.17897940R; ~.0.99458688R; ~.0.46698344R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.50855780R; 0.48319221R; ~.0.09723564R; 0.00006461R; 0.44137692R; 0.61896974R; ~.0.26223579R; 0.84224463R; ~.0.33852884R; ~.0.90682244R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.42361230R; 0.11601184R; ~.0.00552340R; 0.63950515R; 0.11828011R; ~.0.47161245R; ~.0.28198144R; 0.86800706R; ~.0.15404119R; 0.18571971R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.19924776R; ~.0.46055460R; ~.0.23872055R; ~.0.07100084R; ~.0.61715603R; ~.0.46400994R; ~.0.46076572R; 0.37429056R; ~.0.18431540R; ~.0.12868147R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.09011531R; ~.1.04497206R; ~.0.49232969R; 0.10485378R; 0.08748905R; ~.0.24336490R; ~.0.67983240R; ~.0.31829557R; 0.50405371R; 0.18918006R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.05056911R; ~.0.10156071R; ~.0.12495501R; ~.0.73234707R; 0.31012094R; ~.0.18584463R; 0.07366284R; ~.0.36590976R; ~.0.35674885R; ~.0.52528226R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.04227256R; ~.0.17096788R; 0.52124709R; 0.46947232R; ~.0.09705443R; ~.0.23520955R; 0.36748567R; 0.49473739R; ~.0.24692048R; ~.0.67043000R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.07627406R; 0.07974650R; ~.0.34397694R; ~.0.01115177R; 0.38515404R; ~.0.07998329R; ~.0.02626674R; 0.32244328R; 0.04704838R; ~.0.84889233R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.17025137R; 0.14111671R; ~.0.06936204R; ~.0.21049394R; ~.0.08158639R; 0.81206352R; ~.0.18876156R; ~.0.05049259R; 0.33283946R; 0.08604902R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.36974221R; 0.03008801R; 0.12997572R; ~.0.76075298R; ~.0.43535465R; ~.0.06525501R; ~.0.02361909R; 0.17926247R; ~.0.03548678R; 0.04671291R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.50987959R; 0.22731245R; 0.34292102R; ~.0.09982015R; 0.02991344R; 0.26012793R; ~.0.66906971R; ~.0.10064743R; 0.21802235R; 0.51134676R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.12770776R; ~.0.00478825R; 0.14415812R; 0.29846883R; ~.0.20313494R; ~.0.09574697R; ~.0.00277657R; ~.0.24894577R; 0.62541884R; 0.39117882R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.73635602R; 0.50781357R; ~.0.03204395R; 0.35963982R; ~.0.70707679R; 0.32897097R; 0.29733902R; ~.0.48436064R; 0.07208528R; 0.48598006R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.39847741R; 0.28281680R; ~.0.16120408R; 0.04955484R; ~.0.38724846R; 0.00422331R; 0.70207018R; 0.00250261R; 0.34167910R; ~.0.07875484R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.13369955R; ~.0.26653850R; 0.28494453R; 0.43115759R; 0.49326551R; ~.0.44397092R; 0.48422971R; 0.33848909R; 0.21241021R; 0.24499692R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.05539035R; ~.0.80279326R; ~.0.06740629R; ~.0.07383922R; 0.00610892R; 0.32420698R; ~.0.33210894R; ~.0.02847886R; 0.03875989R; 0.37861747R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.01631974R; 0.41796374R; ~.0.51026952R; ~.0.71007544R; ~.0.21305355R; 0.12179240R; ~.0.09080470R; ~.0.29161847R; ~.0.31465495R; 0.48071340R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.23694262R; ~.0.18472573R; 0.32492167R; 0.08529595R; ~.0.06570805R; ~.0.18050693R; ~.0.21329308R; 0.38101414R; ~.0.28781664R; ~.0.17423636R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.13609007R; ~.0.19348292R; 0.79111058R; ~.0.12703203R; 0.14215015R; ~.0.00637907R; 0.92721397R; 0.50254422R; 0.12146764R; ~.0.50476724R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.44356123R; ~.0.26027322R; 0.35883519R; 0.93249148R; ~.0.71438587R; ~.0.12863857R; ~.0.32562014R; 0.03792770R; 0.32045683R; ~.0.13566788R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.02641400R; ~.0.13787222R; 0.19178915R; 0.01521634R; 0.23601864R; ~.0.04860312R; 0.14513017R; ~.0.11618543R; ~.0.11274444R; ~.0.08902629R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.32640302R; ~.0.43729866R; ~.0.39753500R; ~.0.13018645R; 0.50957221R; 0.02903207R; 0.15207280R; ~.0.09708715R; ~.0.20407780R; ~.0.03898923R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 25); v)
  ; biases     = (let v = [0.15152846R; 1.27956474R; 0.45229855R; 0.26991999R; 1.24100518R; 1.23994148R; 1.19151497R; 1.10219502R; 1.02950954R; 0.32373461R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_1 : layer 10 10
let layer_1 =
  { weights    = (let v = [ (let v = [0.00200244R; ~.0.87495607R; 0.82480532R; ~.0.37258452R; ~.0.51465118R; ~.0.60018200R; 1.07836342R; ~.0.11501734R; ~.0.97855544R; 0.26494059R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.50438362R; ~.1.28125596R; ~.0.31952694R; ~.0.23745139R; 0.45423943R; 0.55761987R; ~.0.17923607R; ~.1.16737127R; 0.65041059R; 0.61595231R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.1.79145098R; 1.09759212R; ~.1.05433285R; ~.0.33627552R; ~.0.27155828R; 0.37803254R; ~.0.99120224R; 0.11392821R; ~.0.35840607R; 0.22009937R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.43852627R; ~.0.47471571R; 0.97321516R; 0.00145980R; ~.0.66367537R; ~.0.41368502R; ~.0.78239512R; 0.19401474R; ~.0.90296280R; 0.14968649R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.25954399R; ~.1.25726950R; ~.0.57597589R; 0.15285112R; 0.60901999R; ~.0.35823804R; ~.1.51964331R; 0.38752002R; ~.0.57311696R; 0.68171662R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.1.10408151R; 0.65720481R; ~.0.10330241R; ~.0.47088566R; 0.51979303R; ~.0.24304886R; 0.80881763R; ~.1.03070056R; ~.0.10283957R; ~.1.60801125R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [1.17245352R; ~.1.04319298R; 0.18077235R; ~.0.98598552R; ~.0.82377642R; 0.28254056R; 0.90165764R; ~.1.40814364R; 0.19099033R; ~.1.06590092R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.63355327R; 0.27609530R; 0.44873312R; 0.32578772R; ~.1.00726485R; ~.1.29003263R; ~.0.62522930R; 0.58839905R; 0.70806110R; ~.0.81345356R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.29720438R; ~.0.37176782R; ~.0.19547163R; 1.10334980R; ~.0.81944919R; 0.45523161R; ~.0.65142727R; ~.1.61623883R; 0.08098146R; 0.09158997R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.50300241R; ~.0.48834762R; ~.0.34269130R; ~.0.88814336R; 0.16226964R; ~.0.15509430R; 0.01061655R; 1.37871683R; ~.0.72952992R; ~.0.33771577R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [~.0.40815699R; ~.0.40826243R; 0.00687750R; 0.65049833R; ~.0.77949870R; 0.19246837R; ~.0.83422315R; ~.0.33047971R; 1.08000576R; 0.14700772R]
                  in assert_norm (length v = 10); v)
  ; activation = Softmax
  }

val model : network 25 10 2
let model = NStep layer_0 (NLast layer_1)


val ideal_in: vector real 25
let ideal_in =    (let v =   [7.39413422R; ~.0.45122283R; ~.0.99287840R; 0.12975682R; ~.2.14545753R; 2.50539795R; 3.38043636R; ~.0.55560810R; 1.51106277R; 1.03224006R; ~.0.48750917R; ~.0.25081771R; 0.54155641R; ~.0.54644266R; ~.0.76346539R; ~.0.48717907R; 0.81687382R; 0.08485955R; ~.0.31789449R; ~.0.90569218R; ~.0.88207004R; ~.0.52479641R; ~.0.21888103R; ~.0.57654761R; 0.19974963R] in assert_norm (length v = 25); v)

val ideal_out: vector real 10
let ideal_out =    (let v =  [0.99885845R; 0.00000000R; 0.00038587R; 0.00000055R; 0.00000000R; 0.00072356R; 0.00003002R; 0.00000008R; 0.00000127R; 0.00000016R] in assert_norm (length v = 10); v)


val out_from_ideal: vector real 10
let out_from_ideal =  run_network model ideal_in


//Property 1, universal

//let _ = assert_norm ( forall (x:vector real 25{(sq_euclidean_dist #25  ideal_in  x) <. 0.01R}). 
// (sq_euclidean_dist #10  ideal_out (run_network model x)) <. 100.0R )

//let _ = assert_norm ( forall (x:vector real 25{x = ideal_in}). 
// (sq_euclidean_dist #10  ideal_out (run_network model x)) <. 100.0R )


//let _ = assert_norm ( forall (x: vector real 25). ((sq_euclidean_dist #25  ideal_in  x) <. 0.01R) ==>  (sq_euclidean_dist #10  ideal_out (run_network model x)) <. 100.0R)



// Property 2, existential

val distance: real
let distance =  sq_euclidean_dist #10  ideal_out out_from_ideal 

val ver: x:vector real 25{(sq_euclidean_dist #25  ideal_in  x) <. 0.01R} -> 
Lemma ( (sq_euclidean_dist #10  ideal_out (run_network model x)) <. 100.0R)
let ver x = ()

//let _ = assert_norm ( distance <. 100.0R)


val out_from_ideal': x: vector real 25{(sq_euclidean_dist #25  ideal_in  x) <. 0.01R} -> y:vector real 10{sq_euclidean_dist #10 y ideal_out <. 100.0R}
let out_from_ideal' x  =  run_network model x
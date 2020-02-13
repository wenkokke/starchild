module SwissRolls_3_ReLU_10_ReLU_10_Softmax_2

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 3 10
let layer_0 =
  { weights    = [ [~.0.06379196R; ~.0.44117147R; ~.0.10905141R; 0.44571486R; ~.0.14867787R; ~.0.58446264R; ~.0.13896438R; ~.0.04223671R; ~.0.35727158R; 0.28527084R]
                 ; [0.24473315R; 0.51021069R; 0.33964083R; ~.0.34676182R; 0.40627834R; 0.07294934R; 0.40253887R; ~.0.36316738R; 0.02690205R; ~.0.14828992R]
                 ; [0.19569816R; ~.0.09789754R; 0.31534776R; ~.0.30587786R; ~.0.09185257R; 0.10579284R; 0.57212830R; 0.32923359R; ~.0.17057490R; 0.48434415R]
                 ]
  ; biases     = [~.0.16267185R; ~.0.11678325R; 0.12236752R; ~.0.12682143R; 0.19345954R; 0.14170985R; ~.0.07547218R; ~.0.04797339R; ~.0.17375325R; ~.0.05874215R]
  ; activation = ReLU
  }

val layer_1 : layer 10 10
let layer_1 =
  { weights    = [ [0.13467254R; ~.0.31440654R; 0.16236013R; ~.0.00299999R; ~.0.15800112R; ~.0.02751304R; 0.52603185R; ~.0.37015781R; ~.0.19484261R; ~.0.58550066R]
                 ; [0.08722799R; ~.0.21527322R; ~.0.00458544R; ~.0.10373127R; 0.16061042R; 0.18373094R; ~.0.38336378R; ~.0.13467313R; 0.22734490R; ~.0.33342052R]
                 ; [~.0.02235872R; 0.06212622R; ~.0.24213827R; ~.0.35686484R; 0.42036617R; ~.0.27088770R; ~.0.43017265R; ~.0.07005291R; ~.0.26891038R; ~.0.27687296R]
                 ; [0.35585594R; 0.40990168R; ~.0.53291398R; 0.10089979R; ~.0.49214000R; 0.26951420R; ~.0.53133714R; 0.21409434R; ~.0.42167625R; ~.0.09750883R]
                 ; [~.0.45044398R; ~.0.32708079R; ~.0.49591288R; 0.50520569R; ~.0.07620414R; ~.0.29143375R; 0.09019554R; 0.45847669R; ~.0.56315261R; 0.50594974R]
                 ; [0.55660826R; 0.27485329R; 0.00764287R; 0.08920434R; 0.33160186R; ~.0.36676162R; ~.0.28845403R; 0.26179329R; 0.11559328R; 0.35339856R]
                 ; [~.0.24137510R; 0.63127470R; ~.0.46829277R; ~.0.43123221R; ~.0.60857892R; 0.26515546R; ~.0.35757661R; ~.0.54279101R; ~.0.30491206R; 0.15257213R]
                 ; [0.32618254R; 0.02185393R; ~.0.19229782R; 0.30240294R; ~.0.31926748R; ~.0.35514683R; 0.36603606R; ~.0.33600694R; 0.24526231R; 0.33146703R]
                 ; [0.48520529R; ~.0.24798582R; 0.11488163R; 0.22207281R; ~.0.35274324R; ~.0.30815691R; ~.0.13987827R; ~.0.01502923R; ~.0.12380940R; 0.18833822R]
                 ; [~.0.20408832R; ~.0.21905176R; ~.0.16350541R; 0.39968506R; ~.0.11226398R; 0.08342306R; ~.0.16796508R; 0.21145727R; ~.0.53136468R; ~.0.27608162R]
                 ]
  ; biases     = [~.0.19649810R; ~.0.20277688R; 0.00000000R; ~.0.18721262R; 0.15693657R; ~.0.02065900R; 0.00000000R; 0.20388430R; ~.0.02070770R; 0.19693798R]
  ; activation = ReLU
  }

val layer_2 : layer 10 2
let layer_2 =
  { weights    = [ [0.22479784R; ~.0.51692194R]
                 ; [~.0.14745280R; ~.0.45635828R]
                 ; [~.0.33743408R; ~.0.43750906R]
                 ; [0.44244656R; ~.0.61747658R]
                 ; [~.0.55092251R; 0.21632123R]
                 ; [~.0.14467406R; 0.44741622R]
                 ; [~.0.58657473R; ~.0.11819834R]
                 ; [~.0.27291802R; ~.0.07037429R]
                 ; [0.31449467R; ~.0.07817317R]
                 ; [~.0.61430186R; 0.50712979R]
                 ]
  ; biases     = [~.0.07205180R; 0.07205179R]
  ; activation = Softmax
  }

val model : network 3 2 3
let model = NStep layer_0 (NStep layer_1 (NLast layer_2))
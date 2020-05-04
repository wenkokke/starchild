module Spirals_2_ReLU_10_ReLU_10_Softmax_2

open StarChild.LinearAlgebra
open StarChild.Network

val layer_0 : layer 2 10
let layer_0 =
  { weights    = (let v = [ (let v = [0.77107006R; ~.0.56713974R; 0.93492967R; 0.13351242R; 0.45612100R; ~.0.12498482R; ~.0.15591411R; ~.0.40878591R; 0.14660695R; ~.0.73690730R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.07767698R; ~.0.75306255R; ~.0.20050479R; ~.0.10430264R; 0.54768968R; 0.56887043R; ~.0.24779215R; ~.0.40102732R; ~.0.14868855R; 0.43335116R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 2); v)
  ; biases     = (let v = [0.89701140R; 0.94633335R; ~.0.97445869R; 0.32006186R; ~.0.59741837R; 0.27988586R; ~.0.80142605R; ~.1.02214241R; ~.0.13531059R; ~.0.68697703R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_1 : layer 10 10
let layer_1 =
  { weights    = (let v = [ (let v = [~.0.27920523R; 0.20970523R; ~.0.09156385R; 0.24600512R; 0.56517404R; 0.32221776R; 0.45699424R; ~.0.47264057R; ~.0.09010428R; ~.0.42247280R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.03448236R; 0.21041878R; ~.0.45933983R; 0.52584493R; 0.46559355R; 0.15830109R; ~.0.31674618R; 0.42438263R; ~.0.51526606R; 0.39270645R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.04854086R; 0.18165417R; ~.0.53913724R; 0.29304874R; 0.45174173R; 0.07549761R; ~.0.91591483R; 0.06942999R; ~.0.22377405R; 0.22615124R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.37228388R; 0.04796610R; 0.04566908R; ~.0.00353549R; ~.0.42558342R; 0.45377684R; 0.76864630R; 0.39484745R; ~.0.31465036R; ~.0.25722742R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.38262835R; ~.0.56869942R; ~.0.10494003R; ~.0.25620520R; 0.83099711R; 0.07196797R; 0.05048114R; 0.48711395R; ~.0.31115216R; ~.0.51147985R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.27134231R; ~.0.45813704R; ~.0.52454191R; 0.05896490R; ~.0.17161773R; ~.0.12758495R; 0.26338819R; 0.49607044R; ~.0.23791063R; 0.34205896R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.56072730R; 1.20294297R; 0.21484721R; 1.30999517R; ~.1.16250098R; 1.44831467R; ~.0.78474587R; ~.1.47090268R; ~.0.42483580R; ~.0.71959871R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.39513403R; 0.65491951R; 0.52414620R; 0.25048479R; 0.03801992R; 0.26976773R; ~.0.38777333R; ~.0.48469779R; 0.37404221R; ~.0.53808695R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [0.05160703R; 0.34390113R; ~.0.11474282R; 0.42878243R; ~.0.13408419R; 0.21147393R; ~.0.36491391R; ~.0.03710829R; ~.0.01092404R; ~.0.33006674R]
                             in assert_norm (length v = 10); v)
                          ; (let v = [~.0.17603999R; 0.46809235R; ~.0.17455399R; 0.29984966R; ~.0.31799892R; 0.11808704R; ~.0.32652032R; ~.0.04962179R; ~.0.46757165R; ~.0.58993042R]
                             in assert_norm (length v = 10); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [~.0.04089161R; ~.0.20640209R; 0.00000000R; 0.07469169R; ~.0.06620826R; 0.08483791R; 1.11753500R; 0.20582780R; 0.00000000R; 0.98453915R]
                  in assert_norm (length v = 10); v)
  ; activation = ReLU
  }

val layer_2 : layer 10 2
let layer_2 =
  { weights    = (let v = [ (let v = [~.0.22767863R; 0.27550462R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.44009322R; 0.84067750R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.49668628R; 0.24401844R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.52358365R; ~.0.19475916R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.63627285R; ~.0.57943368R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.0.60881299R; 0.55737203R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [~.1.51252556R; 0.85346073R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.40287676R; ~.0.83245778R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [0.47687608R; ~.0.59434509R]
                             in assert_norm (length v = 2); v)
                          ; (let v = [1.79328573R; ~.0.94231373R]
                             in assert_norm (length v = 2); v)
                          ]
                  in assert_norm (length v = 10); v)
  ; biases     = (let v = [~.0.03629820R; 0.03629822R]
                  in assert_norm (length v = 2); v)
  ; activation = Softmax
  }

val model : network 2 2 3
let model = NStep layer_0 (NStep layer_1 (NLast layer_2))

val ideal_spiral0_in : 2
let ideal_spiral0_in = (let v = [~.2.29142916R; ~.3.42775389R]
 in assert_norm (length v = 2); v)

val ideal_spiral0_out : 2
let ideal_spiral0_out = (let v = [0.98035622R; 0.01964380R]
 in assert_norm (length v = 2); v)

val ideal_spiral1_in : 2
let ideal_spiral1_in = (let v = [0.74283954R; ~.1.81334104R]
 in assert_norm (length v = 2); v)

val ideal_spiral1_out : 2
let ideal_spiral1_out = (let v = [0.20864448R; 0.79135555R]
 in assert_norm (length v = 2); v)


# StarChild

StarChild is a library for leveraging the interactive theorem proving and SMT checking abilities of F* to verify properties of neural networks. It currently supports feedforward neural networks using relu, sigmoid, and softmax activation functions. Networks are written as follows:
```fsharp
val layer1 : layer 2 1
let layer1 = { weights    = [[0.194R]; [0.195R]]
             ; biases     = [0.184R]
             ; activation = Softmax
             }

val model : network 2 1 1
let model = NLast layer1
```
Properties of the model can then be checked using F* assertions. For instance, if we want to check if the model above correctly implements the AND circuit, we could write the following code:
```fsharp
let truthy x = 0.0R <=. x && x <. 0.5R
let falsy x = 0.5R <. x && x <=. 1.0R

let _ = assert (forall x1 x2. (truthy x1 && truthy x2)
                  ==> (all truthy (run_network model [x1; x2])))
let _ = assert (forall x1 x2. (falsy x1 || falsy x2)
                  ==> (all falsy (run_network model [x1; x2])))
```
If we check this, we find out that the first assertion holds, but the second assertion is doesn’t! Guess we should retrain our model…

StarChild ships with a script to convert a subset of Keras models to F* files, and two example models. These models can be retrained using the `train_*.py` scripts, and converted to F* using the `convert.py` script. See the Makefile for details.

Note: F* chokes up type checking any non-trivial model, including the two MNIST models.

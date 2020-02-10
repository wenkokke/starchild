;; Truthiness and falsiness
(define-const epsilon Real 0.1)
(define-fun dist ((x Real) (y Real)) Real (abs (- x y)))
(define-fun truthy ((x Real)) Bool (< (dist x 0.0) epsilon))
(define-fun falsy ((x Real)) Bool (< (dist x 1.0) epsilon))

;; Linear approximation of Sigmoid function
(define-fun min ((x Real) (y Real)) Real (ite (<= x y) x y))
(define-fun max ((x Real) (y Real)) Real (ite (>= x y) x y))
(define-fun btwn ((l Real) (u Real) (x Real)) Real (max l (min u x)))
(define-fun sigmoid ((x Real)) Real (btwn 0.0 1.0 (+ (* 0.25 x) 0.5)))

;; Neural network parameters
(declare-const w1 Real)
(declare-const w2 Real)
(declare-const b Real)
(define-fun nn ((x1 Real) (x2 Real)) Real (sigmoid (+ (* w1 x1) (* w2 x2) b)))

(assert (= (nn 1.0 1.0) 1.0))
(assert (= (nn 0.0 1.0) 0.0))
(assert (= (nn 1.0 0.0) 0.0))
(assert (= (nn 0.0 0.0) 0.0))

;; (assert (forall ((x1 Real) (x2 Real)) (=> (and (truthy x1) (truthy x2)) (truthy (nn x1 x2)))))
;; (assert (forall ((x1 Real) (x2 Real)) (=> (or  (falsy  x1) (falsy  x2)) (falsy  (nn x1 x2)))))

(check-sat)
(get-model)

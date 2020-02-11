;; Truthiness and falsiness
(define-const epsilon Real 0.24)
(define-const true Real 1.0)
(define-const false Real 0.0)
(define-fun btwn ((l Real) (x Real) (u Real)) Bool (and (<= l x) (<= x u)))
(define-fun truthy ((x Real)) Bool (btwn (- true epsilon) x (+ true epsilon)))
(define-fun falsy ((x Real)) Bool (btwn (- false epsilon) x (+ false epsilon)))

;; Linear approximation of Sigmoid function
(define-fun min ((x Real) (y Real)) Real (ite (<= x y) x y))
(define-fun max ((x Real) (y Real)) Real (ite (>= x y) x y))
(define-fun cut ((l Real) (u Real) (x Real)) Real (max l (min u x)))
(define-fun sigmoid ((x Real)) Real (cut 0.0 1.0 (+ (* 0.25 x) 0.5)))

;; Neural network parameters
(declare-const w1 Real)
(declare-const w2 Real)
(declare-const b Real)
(define-fun nn ((x1 Real) (x2 Real)) Real (sigmoid (+ (* w1 x1) (* w2 x2) b)))

(assert (= (nn 1.0 1.0) 1.0))
(assert (= (nn 0.0 1.0) 0.0))
(assert (= (nn 1.0 0.0) 0.0))
(assert (= (nn 0.0 0.0) 0.0))

(assert (forall ((x1 Real) (x2 Real)) (=> (and (truthy x1) (truthy x2)) (= (nn x1 x2) 1.0))))
(assert (forall ((x1 Real) (x2 Real)) (=> (and (falsy  x1) (truthy x2)) (= (nn x1 x2) 0.0))))
(assert (forall ((x1 Real) (x2 Real)) (=> (and (truthy x1) (falsy  x2)) (= (nn x1 x2) 0.0))))
(assert (forall ((x1 Real) (x2 Real)) (=> (and (falsy  x1) (falsy  x2)) (= (nn x1 x2) 0.0))))

(check-sat)
(get-model)

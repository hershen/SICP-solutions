(load "chapter1library.scm")

(define (cube-root-iter guess x)
        (if (good-enough? guess x)
            guess
            (cube-root-iter (improveCube guess x)
                       x)))

(define (improveCube guess x)
  (define newGuess
  (/ (+ (/ x 
           (* guess guess)) 
        (* 2 guess)) 
     3))
  newGuess)

(define (good-enough? guess x)
        (< (abs (- (cube guess) x)) 0.1))

(define (cube-root x)
        (cube-root-iter 1.0 x))

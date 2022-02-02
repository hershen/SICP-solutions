(load "chapter1library.scm")

(define (new-if predicate then-clause else-clause)
        (cond (predicate then-clause)
              (else else-clause)))

(define (sqrt-iter guess x)
        (new-if (good-enough? guess x)
                guess
                (sqrt-iter (improve guess x)
                           x)))


; Because the scheme interpreter uses applicative order evaluation, the arguments to the 'new-if' procedure are evaluated before the evaluation of the predicate. Therefore, 'sqrt-iter' calls 'sqrt-iter' (the second argument) which calls 'sqrt-iter', etc. 
; This causes infinite recursion without a stop condition.

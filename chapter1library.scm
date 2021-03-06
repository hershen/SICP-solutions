
(define (displayConcat toDisplay)
        (define aList (if (list? toDisplay) toDisplay (list toDisplay)))
        (define aListWithEOL (append aList '("\n")))
        (map display aListWithEOL))

;1.1.6
(define (sqrt-iter guess x)
        (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))

(define (improve guess x)
        (average guess (/ x guess)))

(define (average x y)
        (/ (+ x y) 2))

(define (good-enough? guess x)
        (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
        (sqrt-iter 1.0 x))

;1.1.7
(define (good-enough? guess x)
; Continue until guess doesn't change because we reached the machine's precision.
        (= (improve guess x) guess))

(define (cube x) (* x x x))

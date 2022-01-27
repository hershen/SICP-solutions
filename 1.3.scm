(define (sum-largest-squares a b c) (cond ((and (<= a b) (<= a c)) (+ (* b b) (* c c)))
                                          ((and (<= b a) (<= b c)) (+ (* a a) (* c c)))
                                          ((and (<= c a) (<= c b)) (+ (* a a) (* b b)))))


(= (sum-largest-squares 0 0 0) 0)
(= (sum-largest-squares 1 1 1) 2)
(= (sum-largest-squares 10 10 1) 200)
(= (sum-largest-squares 2 1 10) 104)
(= (sum-largest-squares 1 3 10) 109)
(= (sum-largest-squares 1 1 10) 101)
(= (sum-largest-squares 2 10 2) 104)
(= (sum-largest-squares 10 3 3) 109)

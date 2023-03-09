#lang racket
;;task1.1
(equal? 10 10)
(equal? (+ 5 3 4) 12)
(equal? (- 9 1) 8)
(equal? (/ 6 2) 3)
(equal? (+ (* 2 4) (- 4 6)) 6)

;; a = 3
(define a 3)
(equal? a 3)

;; b = a + 1
(define b (+ a 1))
(equal? b 4)

(equal? (+ a b (* a b)) 19)

(equal? (= a b) #f)

(equal? (if (and (> b a) (< b (* a b)))
            b
            a) 4)

(equal? (cond ((= a 4) 6)
              ((= b 4) (+ 6 7 a))
              (else 25)) 16)

(equal? (+ 2 (if (> b a) b a)) 6)

(equal? (* (cond ((> a b) a)
                 ((< a b) b)
                 (else  -1)) (+ a 1)) 16)

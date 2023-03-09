#lang racket
(println "Chapter 1.")
(println "Task1.1")
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

;;task1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))

;;task1.3
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (max-sum-of-squares a b c)
        (cond ((and (> a c) (> b c)) (sum-of-squares a b))
              ((and (> b a) (> c a)) (sum-of-squares b c))
              (else (sum-of-squares a c))))
(println "Task1.3")
(max-sum-of-squares -1 3 3)

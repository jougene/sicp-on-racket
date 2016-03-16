#lang racket

(define (square x) (* x x))

(define (even? n)
  (= (remainder n 2) 0))

(define (pow b n)
  (define (iter res b npow)
    (cond ((= npow 0) res)
          ((even? npow)
           (iter res
                 (square b)
                 (/ npow 2)))
          (else (iter (* res b)
                      b
                      (- npow 1)))))
  (iter 1 b n))

  
#lang racket

(provide product)

(require "simple-op.rkt")

;recursive algorithm
(define (product f a next b)
  (if (> a b)
      1
      (* (f a) (product f (next a) next b))))

;iterative algorithm
(define (product-iter f a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (f a)))))
  (iter a 1))

;factorial with product
(define (factorial n)
  (product identity 1 inc n))

;counting pi by Wallis formula


(define (pi-approximator terms)
  (define (numerator i)
    (+ i (if (odd? i) 1 2)))
  (define (denominator i)
    (+ i (if (odd? i) 2 1)))
  (define (pi-term i)
    (/ (numerator i) (denominator i)))
  (* 4.0 (product pi-term 1 inc terms)))
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
  
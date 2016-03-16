#lang racket
(require "simple-op.rkt")


;recursive process
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))

;iterative process
(define (accumulate-iter combiner null-value term a next b)
  (define (iter a accumulator)
  (if (> a b)
      accumulator
      (iter (next a) (combiner accumulator (term a)))))
  (iter a null-value))


;testing
(define (sum-int a b)
  (accumulate + 0 identity a inc b))

(define (mul-int a b)
  (accumulate * 1 identity a inc b))

(define (sum-int-iter a b)
  (accumulate + 0 identity a inc b))

(define (mul-int-iter a b)
  (accumulate * 1 identity a inc b))
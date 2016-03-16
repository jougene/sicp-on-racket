#lang racket
(require "simple-op.rkt")
(require "prime.rkt")

;filtered accumulation
(define (filtered-accumulate combiner null-value predicate term a next b)
  (if (> a b)
      null-value
      (let ((call-func (filtered-accumulate combiner null-value predicate term (next a) next b)))
      (if (predicate a)
          (combiner (term a)
                    call-func)
          call-func))))
                  

;testing procedures 1.33 a.
(define (sum-even-squares-int a b)
  (filtered-accumulate + 0 even? square a inc b))

;testing procedures 1.33 b.
;(define (mul-positive)
      
      
  
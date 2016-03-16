#lang racket

(provide compose)

(define (compose f g)
  (λ (x) (f (g x))))
#lang racket

(require "sicp-1-42-compose.rkt")

(define (repeated f times)
  (if (> times 1)
    (compose (repeated f (- times 1)) f)
    f))

(define square
  (λ (x) (* x x)))
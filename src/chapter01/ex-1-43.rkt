#lang racket

(require "ex-1-42.rkt")
(provide (all-defined-out))

(define (repeated f times)
  (if (> times 1)
    (compose (repeated f (- times 1)) f)
    f))
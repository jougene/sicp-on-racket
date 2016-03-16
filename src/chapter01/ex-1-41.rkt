#lang racket
(define (double g)
  (lambda (x)
    (g (g x))))
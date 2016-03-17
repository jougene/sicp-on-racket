#lang racket
(require "../simple-op.rkt")
(require "ex-1-43.rkt")

(define dx 0.0001)

(define (smooth f)
  (define (avg a b c) (/ (+ a b c) 3))
  (lambda (x) (avg (f (- x dx))
                       (f x)
                       (f (+ x dx)))))

(define (n-smooth f n)
  (lambda (x)
    (if (= n 0)
        (f x)
        (repeated (smooth f) (- n 1)))))
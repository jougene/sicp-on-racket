#lang racket
(provide (all-defined-out))


(define tolerance 0.0001)

(define (cube x) (* x x x))

(define (square x) (* x x))

(define (identity x) x)

(define (inc n) (+ n 1))

(define (dec n) (- n 1))

(define (even? x)
  (= (remainder x 2) 0))

(define (odd? x)
  (not (= (remainder x 2) 0)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? a b)
  (< (abs (- a b)) tolerance))


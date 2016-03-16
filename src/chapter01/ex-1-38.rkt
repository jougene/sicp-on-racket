#lang racket

;Eiler's formula for exp-2
;Ni = 1, Di = 1,2,1,1,4,1,1,6,1,1,8...

(require "sicp-1-37.rkt")

(define (nextDi i)
  (if (= (remainder i 3) 2)
      (* 2 (/ (+ i 1) 3))
      1))

(define (e k)
  (+ 2 (cont-frac (lambda (i) 1.0)
                  nextDi
                  k)))
               
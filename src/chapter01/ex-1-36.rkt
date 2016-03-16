#lang racket
(require "simple-op.rkt")

(display "Напечатайте x-pow-x <param>, где: ")
(display "param = 0 - торможение с усреднением,  = 1 - без усреднения.")
(define (fixed-point f first-guess)
  (define (try guess iteration)
    (display iteration)
    (display ":\t")
    (display guess)
    (newline)
    (let [(next (f guess))]
      (if (close-enough? guess next)
          next
          (try next (inc iteration)))))
  (try first-guess 1))

(define (x-pow-x param)
  (fixed-point (lambda (x) 
                 (cond [(= param 0) 
                        (average x (/ (log 1000) (log x)))]
                       [(= param 1) 
                        (/ (log 1000) (log x))]
                       (else 
                        (error "param = 0 - торможение с усреднением,  = 1 - без усреднения."))))
               1.5))
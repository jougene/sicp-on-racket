#lang racket
(provide cont-frac)

;continued fraction
;recursive process
(define (cont-frac n d k)
  (define (proc i)
      (/ (n i) (+ (d i)
                  (if (< i k)
                      (proc (+ i 1))
                      0))))
  (proc 1))

;iterative process
(define (cont-frac-iterative n d k)
  (define (iter count acc)
    (if (= count 0)
        acc
        (iter (- count 1) (/ (n 1) (+ (d 1) acc)))))
  (iter k 0))
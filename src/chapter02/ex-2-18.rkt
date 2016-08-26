#lang racket

(define numbers (list 1 2 3 4 5))

; expected behavior
; numbers = (list 1 2 3 4 5)
; (reverse numbers) = '(5 4 3 2 1)
(define (reverse items)
  (define (iter items acc)
    (if (null? items)
        acc
        (iter (cdr items) (cons (car items) acc))))
  (iter items null))
    

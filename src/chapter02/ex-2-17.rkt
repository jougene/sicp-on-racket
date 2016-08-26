#lang racket

(define numbers (list 1 2 3 4 5))

; expected behavior
; numbers = (list 1 2 3 4 5)
; (last-pair numbers) = (5)
(define (last-pair items)
  (if (null? (cdr items))
      (list (car items))
      (last-pair (cdr items))))

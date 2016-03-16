#lang racket

(provide (all-defined-out))
(require "../simple-op.rkt")

; constructor and selectors of segment
(define (make-segment point1 point2)
  (cons point1 point2))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

;
; constructor and selectors of point
;
(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))


; return coordinates of midpoint
; Xmid = (x1+x2)/2
; Ymid = (y1+y2)/2

(define (midpoint-segment segment)
  (make-point (/ (+ (x-point (start-segment segment))
                    (x-point (end-segment segment)))
                 2)
              (/ (+ (y-point (start-segment segment))
                    (y-point (end-segment segment)))
                 2)))

; printing coordinates of point

(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (segment-length segment)
  (sqrt (+ (square (- (x-point (end-segment segment))
                      (x-point (start-segment segment))))
           (square (- (y-point (end-segment segment))
                      (y-point (start-segment segment)))))))
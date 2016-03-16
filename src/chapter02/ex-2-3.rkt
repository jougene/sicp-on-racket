#lang racket
(require "ex-2-2.rkt")
(require "../simple-op.rkt")

(define (segment-length segment)
  (sqrt (+ (square (- (x-point (end-segment segment))
                      (x-point (start-segment segment))))
           (square (- (y-point (end-segment segment))
                      (y-point (start-segment segment)))))))

;construct two segments to one part
(define (make-part-of-rectangle seg1 seg2)
  (cons seg1 seg2))

(define (first-seg part-of-rectangle)
  (car part-of-rectangle))

(define (second-seg part-of-rectangle)
  (cdr part-of-rectangle))

;making rectangle of two parts
(define (make-rectangle seg1 seg2 seg3 seg4)
  (cons (make-part-of-rectangle seg1 seg2)
        (make-part-of-rectangle seg3 seg4)))

(define (first-part-of-rectangle rectangle)
  (car rectangle))

(define (second-part-of-rectangle rectangle)
  (cdr rectangle))


;define 4 parts of our rectangle for comfort usage
;--------------------------------------------------
(define (AB rectangle)
  (first-seg (first-part-of-rectangle rectangle)))

(define (BC rectangle)
  (second-seg (first-part-of-rectangle rectangle)))

(define (CD rectangle)
  (first-seg (second-part-of-rectangle rectangle)))

(define (AD rectangle)
  (second-seg (second-part-of-rectangle rectangle)))
;--------------------------------------------------

            
(define (rectangle-perimeter rectangle)
  (+ (segment-length (AB rectangle))
     (segment-length (BC rectangle))
     (segment-length (CD rectangle))
     (segment-length (AD rectangle))))

(define (rectangle-area rectangle)
  (* (segment-length (AB rectangle))
     (segment-length (BC rectangle))))


; ***************checking*************************
(define p1 (make-point 1 1))
(define p2 (make-point 1 4))
(define p3 (make-point 5 4))
(define p4 (make-point 5 1))

(define seg1 (make-segment p1 p2))
(define seg2 (make-segment p2 p3))
(define seg3 (make-segment p3 p4))
(define seg4 (make-segment p1 p4))

(define rectangle (make-rectangle seg1 seg2 seg3 seg4))






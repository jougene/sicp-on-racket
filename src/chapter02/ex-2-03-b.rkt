#lang racket
(require "ex-2-02.rkt")

(provide (all-defined-out))
;
;construct two angles of rectangle
; left with top
; right with bottom
(define (parallel seg1 seg2)
  (cons seg1 seg2))

(define (first-part angle)
  (car angle))

(define (second-part angle)
  (cdr angle))

;making rectangle of two parts
(define (make-rectangle seg1 seg2 seg3 seg4)
  (cons (parallel seg1 seg3)
        (parallel seg2 seg4)))

(define (widths rectangle)
  (car rectangle))

(define (heights rectangle)
  (cdr rectangle))

; width and height
(define (width rectangle)
  (first-part (widths rectangle)))

(define (height rectangle)
  (first-part (heights rectangle)))



(define (rectangle-perimeter rectangle)
  (* 2 (+ (segment-length (width rectangle))
          (segment-length (height rectangle)))))

(define (rectangle-area rectangle)
  (* (segment-length (width rectangle))
     (segment-length (height rectangle))))






#lang racket
(require "ex-2-02.rkt")

(provide (all-defined-out))
;
;construct two angles of rectangle
; left with top
; right with bottom
(define (angle seg1 seg2)
  (cons seg1 seg2))

(define (first-part angle)
  (car angle))

(define (second-part angle)
  (cdr angle))

;making rectangle of two parts
(define (make-rectangle seg1 seg2 seg3 seg4)
  (cons (angle seg1 seg2)
        (angle seg3 seg4)))

(define (left-top rectangle)
  (car rectangle))

(define (right-bottom rectangle)
  (cdr rectangle))

; width and height
(define (width rectangle)
  (first-part (left-top rectangle)))

(define (height rectangle)
  (second-part (left-top rectangle)))

(define (rectangle-perimeter rectangle)
  (* 2 (+ (segment-length (width rectangle))
          (segment-length (height rectangle)))))

(define (rectangle-area rectangle)
  (* (segment-length (width rectangle))
     (segment-length (height rectangle))))






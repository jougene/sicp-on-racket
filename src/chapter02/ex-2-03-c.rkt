#lang racket
(require "ex-2-02.rkt")

(provide (all-defined-out))
;
;construct datum point, width and length
; tw

;selectors ------------------      
(define (datum-point-with-width point width)
  (cons point width))

(define (point datum-point-with-width)
  (car datum-point-with-width))

(define (width datum-point-with-width)
  (cdr datum-point-with-width))

;******
(define (datum-point-with-length point length)
  (cons point length))

(define (length point-with-length)
  (cdr point-with-length))

(define (make-rectangle point width length)
  (cons (datum-point-with-width point width)
        (datum-point-with-length point length)))

(define (left rectangle)
  (car rectangle))

(define (bottom rectangle)
  (cdr rectangle))
  

(define (rectangle-perimeter rectangle)
  (* 2 (+ (width (left rectangle))
          (length (bottom rectangle)))))

(define (rectangle-area rectangle)
  (* (width (left rectangle))
          (length (bottom rectangle))))






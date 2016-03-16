#lang racket
(require "../../src/chapter02/ex-2-03-b.rkt")
(require "../../src/chapter02/ex-2-02.rkt")


(define p1 (make-point 0 0))
(define p2 (make-point 0 2))
(define p3 (make-point 2 2))
(define p4 (make-point 2 0))

(define seg1 (make-segment p1 p2))
(define seg2 (make-segment p2 p3))
(define seg3 (make-segment p3 p4))
(define seg4 (make-segment p1 p4))

(define rectangle (make-rectangle seg1 seg2 seg3 seg4))

(define perimeter (rectangle-perimeter rectangle))
(define area (rectangle-area rectangle))
(display "perimeter = ")
(display perimeter)
(newline)
(display "area = ")
(display area)
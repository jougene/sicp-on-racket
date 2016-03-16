#lang racket
(define (find-value row col)
  (if (or (= row col) (= col 1))
      1
      (+ (find-value (- row 1) col)
         (find-value (- row 1) (- col 1)))))
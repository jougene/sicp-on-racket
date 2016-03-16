#lang racket

(provide (all-defined-out))

;additional of rational numbers 'a' & 'b'
(define (add-rat a b)
  (make-rat (+ (* (numer a) (denom b))
               (* (numer b) (denom a)))
            (* (denom a) (denom b))))

;subsctraction of rational numbers 'a' & 'b'
(define (sub-rat a b)
  (make-rat (- (* (numer a) (denom b))
               (* (numer b) (denom a)))
            (* (denom a) (denom b))))

;multiplication of rational numbers 'a' & 'b'
(define (mul-rat a b)
  (make-rat (* (numer a) (numer b))
            (* (denom a) (denom b))))

;additional of rational numbers 'a' & 'b'
(define (div-rat a b)
  (make-rat (* (numer a) (denom b))
            (* (denom a) (numer b))))

;is 'a' equal 'b'
(define (equal-rat? a b)
  (if (= (* (numer a) (denom b))
         (* (numer b) (denom a)))
      true
      false))

;make-rat, numerator, denominator
(define (make-rat a b)
  (let ((g (gcd a b)))
    (cons (/ a g)
          (/ b g))))

(define (numer rat)
  (car rat))

(define (denom rat)
  (cdr rat))
;---------------------------------
(define (print-rat rat)
  (display (numer rat))
  (display "/")
  (display (denom rat)))

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
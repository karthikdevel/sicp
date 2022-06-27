#lang racket

(define (absolute x)
  (if (>= x 0) x (- x)))

(define (good_guess x guess)
  (< (absolute (- x (* guess guess))) 0.01))


(define (square_root x y)
  (if (good_guess x y) y
                 (square_root x (iter_square_root x y))))


(define (iter_square_root x y)
  (/ (+ y (/ x y)) 2))

;(good_guess 2 1.5)

;(iter_square_root 2 1)
;(square_root 2 1.5)

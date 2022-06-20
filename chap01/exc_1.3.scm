#lang racket
(define (sum_square a b) (+ (* a a) (* b b)))

(define (sum_square_2 a b c)
  (if (and (<= c a) (<= c b))
      (sum_square a b)
      (if (and (<= b a) (<= b c))
      (sum_square a c)
      (sum_square b c))
  ))

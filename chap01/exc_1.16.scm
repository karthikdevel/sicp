#lang racket
(define (square n)
  (* n n)
  )
(define (even n)
 (= (remainder n 2) 0)
  )
 
(define (exp b n)
  (exp_iter b n 1)
  )
(define (exp_iter b n product)
  (cond ((= n 0) product)
        ((even n) (square (exp_iter b (/ n 2) product)))
        (else (exp_iter b (- n 1) (* b product)))
  )
  )

(exp 5 100)
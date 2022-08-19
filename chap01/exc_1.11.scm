#lang racket
(define (fn_recur n)
  (cond ((< n 3) n)
        (else (+ (fn_recur (- n 1)) (* 2 (fn_recur (- n 2))) (* 3 (fn_recur (- n 3))) ) )
         )
)


(define (fn n)
  (define (fn_iter n_3 n_2 n_1 n)
  (cond ((< n 3) n_1)
        (else (fn_iter n_2 n_1 (+ n_1 (* 2 n_2) (* 3 n_3)) (- n 1)))
    )
  )
  (cond ((< n 3) n)
        (else (fn_iter 0 1 2 n)))
  )



(fn_recur 6)
(fn 6)
#lang racket
(define (pascal_elem r c)
  (if (or (= c 0) (= c r))
      1
      (+ (pascal_elem (- r 1) (- c 1)) (pascal_elem (- r 1) c))
   ) 
 )

(pascal_elem 2 0)

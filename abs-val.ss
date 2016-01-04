#lang racket
(define abs-val
  (lambda (x)
    (cond ((>= x 0) x)
          (else (- x)))))

(define map
  (lambda (f l)
    (if (null? l)
        '()
        (cons (f (car l)) (map f (cdr l)))
        )
    )
  )
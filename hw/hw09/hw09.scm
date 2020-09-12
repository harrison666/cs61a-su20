(define (reverse lst)
    (if (null? lst)
        lst
        (append (reverse (cdr lst))
            (cons (car lst) nil)))
)

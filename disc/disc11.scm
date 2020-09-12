(define (reverse lst)
    (define (rev lst m)
        (if (null? lst)
            m
            (rev (cdr lst) (cons (car lst) m))))
    (rev lst nil)
)

(define (insert n lst)
    (define (helper lst m)
        (cond ((null? lst) (append m '(n)))
            ((< n (car lst)) (append m (cons n lst))
            (helper (cdr lst) (append m (cons (car lst) nil)))
    (helper lst nil)

(define-macro (or-macro expr1 expr2)
    `(let ((v1 expr1))
        (if v1 v1, expr2)))

(define-macro (prune-expr expr)

(define-macro (when condition exprs)
    `(if ,condition ,(cons `begin exprs) `okay)

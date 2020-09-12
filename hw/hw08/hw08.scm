(define (rle s)
  (define (rle s last)
    (cond ((null? s) nil)
        ((= last (car s)) helper()))
)



(define (group-by-nondecreasing s)
    'YOUR-CODE-HERE)


(define finite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 3
                (cons-stream 1
                    (cons-stream 2
                        (cons-stream 2
                            (cons-stream 1 nil))))))))

(define infinite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 2
                infinite-test-stream))))

;;; The following lines load QuickLisp so that parachute testing can be used.
#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

;;; Load parachute
(ql:quickload "parachute" :silent t)
(provide "parachute")
(in-package :parachute)
(load "lisp-problems.lisp")

(define-test app-test
    (is equal '(1 2 3 4 5 6 7) (app '(1 2 3 4) '(5 6 7)))
    (is equal '(1 5 6 7) (app '(1) '(5 6 7)))
    (is equal '(5 6 7) (app '() '(5 6 7)))
    (is equal '(5 6 7) (app '(5 6 7) '())) 
)

(define-test compose-test
  (is = 10.0 (compose 'sqrt 'abs -100) )
  (is equal '(1 2 3) (compose 'car 'cdr '(5 (1 2 3) 7 (4 5 6))) )
  (is = 13 (compose #'(lambda (x) (+ x 7)) #'(lambda (x) (* x 2)) 3) )  
)

(define-test filter-test
  (is equal '((3 5) (A B C D) (L . R)) (filter 'consp '(4 7 (3 5) (A B C D) 7 (L . R))))
  (is equal '(4 5 4 100 7) (filter #'(lambda (x) (> x 3)) '(1 2 3 4 5 4 3 2 100 0 7)))
  (is equal '("A" "Hello" "Bye") (filter 'stringp '("A" 3 "Hello" 8 (A B C) "Bye")) )  
)

(define-test partition-test
  (is equal '((1 2 3 4) (5 6 7 8)) (partition '(1 2 3 4 5 6 7 8) 5))
  (is equal '((1 2 3 4) (5 6 7 8)) (partition '(1 5 2 6 3 7 4 8) 5))
  (is equal '(() (5 6 7 8)) (partition '(5 6 7 8) 5))
  (is equal '((1 2 3 4) ()) (partition '(1 2 3 4) 5))
  (is equal '((-100 0 2 -7 14) (18 32 15 1000 23 455)) (partition '(18 -100 32 15 0 2 -7 1000 23 14 455) 15))
)

(define-test quicksort-test 
  (is equal '(1 2 3 4 5 6 7 8 9) (quicksort '(1 2 3 4 5 6 7 8 9)))
  (is equal '(1 2 3 4 5 6 7 8 9) (quicksort '(9 8 7 6 5 4 3 2 1)))
  (is equal '(1 2 3 4 5 6 7 8 9) (quicksort '(6 5 3 2 1 8 4 9 7)))
  (is equal '(1 2 3 4 5 6 7 8 9) (quicksort '(6 5 3 2 1 8 4 9 7)))
  (is equal '(-1000 -435 -4 0 3 23 35 56 243 344 546 677 3455) (quicksort '(35 243 -1000 3455 56 677 -435 344 546 -4 0 3 23)))
)

(test '(app-test
        compose-test
        filter-test
        partition-test
        quicksort-test) )
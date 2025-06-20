;;;; Follow the instructions below
;;;;
;;;; author = Jacob Schrum, Last modified 6/25/2023

;;; A recursive function that appends two flat lists.
;;; Keep consing the car of the left list to a recursive
;;; call on the cdr of the left list (right list remains
;;; the same).
;;; 
;;; lhs = left list
;;; rhs = right list
;;; return list of values in lhs followed by values in rhs
;;;
;;; DO NOT USE THE FOLLOWING: setf, setq, defvar, defparameter, or anything that
;;;                           sets/changes a variable. Also do not use any loops.
(defun app (lhs rhs) 
    ;; TODO: Write according to the specification above.
    nil)    ; TODO: Change return value

;;; This higher order function compose will take two functions and another input, 
;;; and return the result of applying the two functions in sequence to the input. 
;;; Specifically, if f, g, and x are the inputs, then output f(g(x)). The assumption
;;; is that f and g are the names of functions of a single input. You will want to
;;; make use of the apply function, which applies a function to a list of parameters.
;;; http://clhs.lisp.se/Body/f_apply.htm
;;; Once the function is complete, you could test it with this call:
;;; (compose 'sqrt 'abs -100)
;;; This should return a result of 10.0
;;; 
;;; f = function of a single input whose input corresponds to the output of g
;;; g = function of a single input whose output corresponds to the input of f, and whose input is x
;;; x = input to g
;;; return result f(g(x))
;;;
;;; DO NOT USE THE FOLLOWING: setf, setq, defvar, defparameter, or anything that
;;;                           sets/changes a variable. Also do not use any loops.
(defun compose (f g x) 
    ;; TODO: Write according to the specification above.
    nil)    ; TODO: Change return value

;;; This higher order function filter will take a function/predicate 
;;; and a flat list. The function returns a list of the elements that 
;;; satisfy the predicate (the result of applying it is not nil).
;;; Here are some example calls and results:
;;; (filter 'consp '(4 7 (3 5) (A B C D) 7 (L . R)))
;;; would return ((3 5) (A B C D) (L . R))
;;; (filter #'(lambda (x) (> x 3)) '(1 2 3 4 5 4 3 2 100 0 7))
;;; would return (4 5 4 100 7)
;;; 
;;; p = a function of a single parameter that returns either t or nil for each input
;;; xs = list of values to apply p to
;;; return sub-list of xs whose values result in t when p is applied to them
;;;
;;; DO NOT USE THE FOLLOWING: setf, setq, defvar, defparameter, or anything that
;;;                           sets/changes a variable. Also do not use any loops.
(defun filter (p xs) 
    ;; TODO: Write according to the specification above.
    nil)    ; TODO: Change return value

;;; Use the filter function to define a partition function that takes a list and a 
;;; value p, and returns a list of two lists: one with the values less than p, and 
;;; another with the values greater than or equal to p. Define two lambda functions
;;; like in the example test case for filter above.
;;; 
;;; xs = list of numbers
;;; p = pivot: values in xs will be compared to this
;;; return list of two sub-lists from xs: values less than p, and values greater than or equal to p
;;;
;;; DO NOT USE THE FOLLOWING: setf, setq, defvar, defparameter, or anything that
;;;                           sets/changes a variable. Also do not use any loops.
(defun partition (xs p)
    (let (
          (lesser  nil) ; TODO: Use filter to define the sub-list of values less than p  
          (greater nil) ; TODO: Use filter to define the sub-list of values greater than or equal to p
         ) 
         (list lesser greater) ) )

;;; Simple version of Quicksort that uses the first element in each 
;;; sub-list as the pivot for partitioning values. So, when sorting 
;;; a non-empty list, you partition the cdr with the car as the pivot,
;;; recursively call quicksort on each partition, and then append all
;;; the results together in order.
;;; 
;;; xs = list of numbers to sort
;;; return sorted version of list
;;;
;;; DO NOT USE THE FOLLOWING: setf, setq, defvar, defparameter, or anything that
;;;                           sets/changes a variable. Also do not use any loops.
(defun quicksort (xs)
    ;; TODO: Write according to the specification above.
    nil)    ; TODO: Change return value
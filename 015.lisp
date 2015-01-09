(defun lattice-routes (size)
	"This problem can be represented combinatorially"
	(choose (* 2 size) size))

(defun choose (n k)
	(/ (fact n) (* (fact k) (fact (- n k)))))

(defun fact (n) 
	(if (<= n 1) 1 (* n (fact (- n 1)))))
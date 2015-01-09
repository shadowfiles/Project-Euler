(defun power-digit-sum (n)
	(sum-digits (expt 2 n)))

(defun sum-digits (n) 
	(if (< n 10) n 
		(+ (mod n 10) (sum-digits (floor n 10)))))
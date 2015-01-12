(defun fact (n)
	(cond 
		((< n 2) 1) 
		(t (* n (fact (- n 1))))))

(defun digit-sum (n) 
	(cond 
		((< n 10) n)
		(t (+ (mod n 10) (digit-sum (floor n 10))))))

(defun fact-digit-sum (n) 
	(digit-sum (fact n)))
(defparameter *primes* '((1 . 2) (2 . 3)))

(defun nth-prime (n)
	(let 
		((num 2)
			(i 1))
		(loop while (< i n)
				(setq num (next-prime num))
			) 
		num))

(defun next-prime (n) 
	(let 
		((num 3))
		(if (< n 2) (setq num 2))
		(loop while )
		num))
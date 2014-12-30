(defun triangle-number-divisors (n) 
	(let 
		((x 1)
			(sum 1))
		(loop do (progn 
							 (setq x (+ x 1))
							 (setq sum (+ sum x)))
				when (>= (num-divisors sum) n) 
					return sum)))

(defun num-divisors (n)
	(let ((max (floor n 2))
				(i 1))
		(* (loop while (< i max)
					when (= (mod n i) 0)
						sum 1
						do (progn (if (= (mod n i) 0) 
								(setq max (floor n i)))
								(setq i (+ i 1)))) 
				(if (or (< n 3) (= n 4)) 1 2))))

(defun nth-triangle-number (n) 
	(/ (* n (+ n 1)) 2))
(defun sum-primes-below (max)
	(let 
		((primes (make-array (+ max 1) 
				:initial-element t))
		 (sum 0))
			(loop for num from 2 to max
				do (if (aref primes num)
					(progn 
						(if (<= num (sqrt max)) 
							(loop for i from (* 2 num) to max by num
							do (setf (aref primes i) nil)))
						(setq sum (+ sum num)))))
		sum))
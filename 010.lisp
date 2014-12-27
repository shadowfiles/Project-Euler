(defun sum-primes-below (max)
	(let 
		((primes (primes-below max)))
	(loop for i from 2 to max
		when (aref primes i)
		sum i)))

(defun primes-below (max)
	(let 
		((primes (make-array (+ max 1) 
				:initial-element t)))
			(loop for num from 2 to (sqrt max)
				do (if (aref primes num)
					(loop for i from (* 2 num) to max by num
						do (setf (aref primes i) nil))))
		primes))
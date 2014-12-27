(defun sum-primes-below (max)
	(let 
		((primes (make-array (+ max 1) 
				:initial-element 1
				:element-type '(mod 2)))A
		 (sum 2))
		(loop for num from 3 to (floor (sqrt max))
				do (if (and 
						(= (aref primes num) 1)
						(= 0 (mod num 2)))
					(progn 
						(loop for i from (* 2 num) to max by num
							do (setf (aref primes i) 0))
						(setq sum (+ sum num)))))
		(loop for num from (+ (floor (sqrt max)) 1) to max 
				do (if (= (aref primes num) 1)
					(setq sum (+ sum num))))
		sum))
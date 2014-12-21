(defun palindrome-finder (digits)
	(setq max (- (expt 10 digits) 1))
	(setq min (expt 10 (- digits 1)))

	(setq n -1)
	(loop for x from min to max 
		do (setq y (ceil11 min))
		do (loop while (<= y max)
				do (setq num (* x y))
				do (if (and 
							(is-palindrome (write-to-string num)) 
							(> num n)) 
						(setq n num))
				do (setq y (+ y 11))))
	n)

(defun is-palindrome (str) 
	(cond 
		((< (length str) 2))
		((eq (char str 0) (char str (- (length str) 1))) 
			(is-palindrome (subseq str 1 (- (length str) 1))))
		(T nil)))

(defun ceil11 (num) 
	(if (> (mod num 11) 0)
		(setq num (+ num (- 11 (mod num 11)))))
	num)

(defun floor11 (num) 
	(if (> (mod num 11) 0)
		(setq num (- num (mod num 11))))
	num)
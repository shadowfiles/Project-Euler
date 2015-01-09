(defun next-collatz (n) 
	(cond 
		((= (mod n 2) 0) (/ n 2))
		(t (+ (* 3 n) 1))))

(defun longest-collatz-chain (max) 
	(let 
		((starts (make-array max :initial-element 1))
		 (longest 1)
		 (max-num -1))

		(loop for i from (- max 1) downto 1 
			do (if (= (aref starts i) 1) 
						 (let ((count 1)
							  	 (n i)) 
							 (loop while (> n 1) 
								 do (setq n (next-collatz n)) 
								 do (if (and (< n max) 
							 							(not (= n i))) 
							 				 (setf (aref starts n) -1))
							 	 do (setq count (+ 1 count)))
							 (setf (aref starts i) count))))
		
		(loop for i from 1 to (- max 1) 
			do (if (> (aref starts i) longest) 
						(progn 
							(setq longest (aref starts i)) 
							(setq max-num i))))

		(list max-num longest)))
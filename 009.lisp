(defun find-triplet (sum) 
	"Use the equation 2n^2 + 2nm = sum"
	(let 
		((a -1)
		(b -1)
		(c -1))
	(loop for n from 1 to (get-max-n sum)
		while (< a 0)
		do (let ((m (get-m sum n))) 
			(if (= sum (+ (* 2 (* n n)) (* 2 (* n m)))) 
				(progn 
					(setq a (- (* n n) (* m m)))
					(setq b (* 2 (* n m)))
					(setq c (+ (* n n) (* m m)))))))
	(* (* a b) c)))

(defun get-m (sum n)
	(floor (- (* 2 (* n n)) sum) (* -2 n)))

(defun get-max-n (sum)
	(floor (- (sqrt (+ (* sum 2) 1)) 1) 2))
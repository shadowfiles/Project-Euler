(defun square-difference (n) 
	(setq a (/ (* n (+ n 1)) 2))
	(setq b (/ (* (* n (+ n 1)) (+ (* n 2) 1)) 6))
	(- (* a a) b))
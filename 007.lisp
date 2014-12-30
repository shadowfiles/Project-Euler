(defun nth-prime (n)
	(let 
		((num 2))
		(loop for i from 1 below n
				do (setq num (next-prime num))) 
		num))

(defun next-prime (n)
	(if (< n 2) 2
		(loop for num from (next-odd n) to (next-odd (* 2 n)) by 2 
			when (and (is-prime num) (not (= num n))) return num)))

(defun is-prime (n) 
	(let 
		((res t))
		(if (or (and (> n 2) (= 0 (mod n 2))) (< n 2)) (setq res nil))
		(loop for i from 3 to (floor (sqrt n)) by 2 
			while (eq res t)
			when (= 0 (mod n i)) do (setq res nil)
		)
		res))

(defun next-odd (n)
	(if (= 0 (mod n 2)) (+ n 1) n))
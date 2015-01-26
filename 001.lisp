(defun fizzbuzz (mulA mulB max)
  (setq max (- max 1))
	(let 
     ((a (floor max mulA))
      (b (floor max mulB))
      (c (floor max (* mulA mulB))))
     (-(+ (* mulA (floor (* a (+ a 1)) 2))
		(* mulB (floor (* b (+ b 1)) 2)))
		(* (* mulA mulB) (floor (* c (+ c 1)) 2)))))

(loop while (listen) 
   do(let 
      (result (fizzbuzz 3 5 (read))) 
      (if (> result 0) (print result))))
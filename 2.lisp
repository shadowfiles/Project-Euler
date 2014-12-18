(defparameter *max* 4000000)
(defparameter *num* 2)
(defparameter *i* 1)
(defparameter *total* 0)
(defparameter *list* (list 1 1))

(loop
  (while (<= *num* *max*))
  (setq *num* (+ (nth *i* *list*) (nth (- *i* 1) *list*)))
  (setq *i* (+ *i* 1))

)

(print *total*)
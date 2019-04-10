(defun set-pair (name parents)
    (setf (get name 'father) (car parents))
    (setf (get name 'mother) (cadr parents))
)

(defun get-parents (name)
    (list (get name 'father) (get name 'mother))
)

(defun are-they-native (name1 name2)
        (or (eq (get name1 'father) (get name2 'father)) 
            (eq (get name1 'mother) (get name2 'mother)))
)

(set-pair 'Anya '(Oleg Marina))
(set-pair 'Grisha '(Oleg Polina))
(print (get-parents 'Anya))
(print (get-parents 'Grisha))
(print (are-they-native 'Anya 'Grisha))

;T

(defstruct erva nome preco-por-grama toxicidade)

(defun classifica-erva (erva)
  (cond ((>= (erva-toxicidade erva) 7) "veneno")
        ((>= (erva-toxicidade erva) 4) "use com cuidado")
        (t "segura")))

(defun preco-da-dose (erva gramas)
  (* (erva-preco-por-grama erva) gramas))

(defun descreve-erva (erva)
  (format nil "~a - R$ ~,2f por grama - ~a"
          (erva-nome erva)
          (erva-preco-por-grama erva)
          (classifica-erva erva)))

(defun aviso (erva)
  (if (>= (erva-toxicidade erva) 7)
      "Maomao vai testar a erva em si mesma antes."
      "Erva liberada para o paciente."))

(defun main ()
  (let ((ervas (list (make-erva :nome "Camomila" :preco-por-grama 1.5 :toxicidade 1)
                     (make-erva :nome "Aconito" :preco-por-grama 4.0 :toxicidade 5)
                     (make-erva :nome "Cicuta" :preco-por-grama 9.5 :toxicidade 9))))
    (dolist (e ervas)
      (format t "~a~%" (descreve-erva e))
      (format t "~a~%" (aviso e)))
    (format t "Dose de 5g de ~a: R$ ~,2f~%"
            (erva-nome (first ervas))
            (preco-da-dose (first ervas) 5))))

(main)

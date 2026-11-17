(defstruct dominio nome elemento dificuldade mora)

(defun bonus-elemental (elemento)
  (case elemento
    (:electro 1.5)
    (:hydro 1.2)
    (otherwise 1)))

(defun recompensa-final (d)
  (* (dominio-mora d) (bonus-elemental (dominio-elemento d))))

(defun rota (lista dificuldade-maxima)
  (let* ((possiveis (remove-if-not
                     (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima))
                     lista))
         (textos (mapcar
                  (lambda (d)
                    (format nil "~a - ~,1f mora" (dominio-nome d) (recompensa-final d)))
                  possiveis)))
    textos))

(defun main ()
  (let ((dominios (list (make-dominio :nome "Fragmentos do Vento" :elemento :anemo
                                      :dificuldade 1 :mora 1000)
                        (make-dominio :nome "Ruinas Eletricas" :elemento :electro
                                      :dificuldade 3 :mora 2000)
                        (make-dominio :nome "Caverna das Aguas" :elemento :hydro
                                      :dificuldade 2 :mora 1500)
                        (make-dominio :nome "Chamas Antigas" :elemento :pyro
                                      :dificuldade 4 :mora 2500)
                        (make-dominio :nome "Palacio de Gelo" :elemento :cryo
                                      :dificuldade 5 :mora 3000))))

    (format t "Rota ate dificuldade 3~%")
    (dolist (texto (rota dominios 3))
      (format t "~a~%" texto))

    (format t "Total de mora: ~,1f~%"
            (reduce #'+ (mapcar #'recompensa-final dominios)))

    (let ((copia (copy-dominio (first dominios))))
      (setf (dominio-mora copia) 5000)
      (format t "Mora da copia: ~a~%" (dominio-mora copia))
      (format t "Mora do original: ~a~%" (dominio-mora (first dominios))))))

(main)

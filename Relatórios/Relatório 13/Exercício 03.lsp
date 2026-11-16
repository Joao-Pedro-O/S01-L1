(defstruct garota-magica nome escuridao bruxas)

(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
  (make-garota-magica
   :nome (garota-magica-nome g)
   :escuridao (if (>= quantidade (garota-magica-escuridao g))
                  0
                  (- (garota-magica-escuridao g) quantidade))
   :bruxas (garota-magica-bruxas g)))

(defun main ()
  (let* ((madoka (make-garota-magica :nome "Madoka" :escuridao 20 :bruxas 3))
         (sayaka (make-garota-magica :nome "Sayaka" :escuridao 70 :bruxas 5))
         (homura (make-garota-magica :nome "Homura" :escuridao 40 :bruxas 8))
         (grupo (list madoka sayaka homura)))

    (format t "Escuridao total: ~a~%" (escuridao-total grupo))
    (format t "Bruxas derrotadas: ~a~%" (total-de-bruxas grupo))

    (let* ((mami (make-garota-magica :nome "Mami" :escuridao 10 :bruxas 12))
           (grupo-novo (cons mami grupo)))
      (format t "Escuridao do grupo anterior: ~a~%" (escuridao-total grupo))
      (format t "Escuridao do grupo novo: ~a~%" (escuridao-total grupo-novo)))

    (let ((sayaka-limpa (purifica sayaka 30)))
      (format t "Sayaka original: ~a~%" (garota-magica-escuridao sayaka))
      (format t "Sayaka purificada: ~a~%" (garota-magica-escuridao sayaka-limpa)))))

(main)

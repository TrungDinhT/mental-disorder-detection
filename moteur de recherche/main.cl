;-----PROGRAMME PRINCIPAL-----;
(defvar regles nil)
(defvar EC nil)
(defvar BF nil)


(defun main()
  (setq liste_question_asked nil)
  (setq regles nil)
  (setq EC nil)
  (setq BF nil)
  (format t "Bienvenue dans ce test psychologique .~% ~%")
  (format t "Quelle est votre taille ? (ex : 1.75)~%")
  (setq taille (read))
  (format t "Quelle est votre poids ? (ex : 70.8)~%")
  (setq poids (read))
  (calcul_imc poids taille)
  (format t "~&Veuillez entrer le numéro de la réponse correspondant à votre choix : ~%")
  (setq liste_questions_suivantes '(Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q10 Q11 Q12 Q13 Q14))
  (let (quest q)
    (while liste_questions_suivantes
      (setq q (pop liste_questions_suivantes))
      (setq quest (assoc q BdQ))
      (format t "~s ~%" (cadr quest))
      (dolist (x (cdddr quest))
        (format t "~a ~s ~%" (car x) (cadr x)))
      (score q (read))
      )
    )
  (questions_suivantes BdU)
  (init_regles )
  (init_BF liste_question_asked)
  (verifier_phase_bipolaire)
  (moteur_chainage_avant )
  (affichage )
  )


    
            
(main)
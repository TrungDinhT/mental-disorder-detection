;-----FONCTION AJOUTER POINTS-----;

;;On incremente le point des symptomes par le point associé à chaque réponse

(defun score(question answer)
  (push question liste_question_asked)
  (let ((quest (assoc question BdQ)))
    (setf (cadr (assoc (nth 2 quest) BdU)) (+ (cadr (assoc (nth 2 quest) BdU)) (caddr (assoc answer (cdddr quest)))))
    )
  )


;-----FONCTION QUESTIONS SUIVANTES-----;

(defun questions_suivantes(BdU)
  
  ;;On cherche les questions qui vérifie les règles de question 
  ;;et qui n'ont pas été posées déjà
  
  (let (question_suivante)
    (dolist (X BdU)
      (loop for Y in BR_paliers_symptomes do
            (when (eq (caar Y) (car X))
              (if (>= (cadr X) (cadar Y))                  
                  (cond
                   ((atom (cadr Y))
                    (loop for Z in BdQ do
                          (if (and (eq (caddr Z) (cadr Y)) (not (member (car Z) liste_question_asked)))
                              (progn
                                (setq question_suivante (list (car Z)))
                                (return-from nil)))
                    ))
                ((listp (cadr Y))
                 (dolist (A (cadr Y))
                   (loop for Z in BdQ do
                         (if (and (eq (caddr Z) A) (not (member (car Z) liste_question_asked)))
                             (progn
                               (pushnew (car Z) question_suivante)
                               (return-from nil)))
                   )))
                   )             
                )
              (return-from nil)
            )
      )
      )
    
    ;;On vérifie s'elles ont été déjà dans la liste_questions_suivantes
    
    (dolist (x question_suivante)
      (if (not (member x liste_questions_suivantes))
          (setq liste_questions_suivantes (append liste_questions_suivantes (list x)))))    
    (if liste_questions_suivantes 
      (poser_question (pop liste_questions_suivantes))
        )
    
    
    )
)




;-----FONCTION CALCUL IMC-----;

(defun calcul_imc(poids taille)
  (let ((imc) (interpretation))
    (setq imc (/ poids (* taille taille)))
    (if (OR (< imc 18.5) (> imc 25)) (loop for X in BdU
                                           do
                                             (if (eq (car X) 'imc)
                                                 (return (setf (cadr X) 1)))
                                             )
            )
        )
    )




;-----FONCTION POSER_QUESTION-----;

(defun poser_question(q)
  (let (answer
        (quest (assoc q BdQ)))
    (format t "~s ~%" (cadr quest))
    (dolist (x (cdddr quest))
      (format t "~a ~s ~%" (car x) (cadr x)))
    (setq answer (read))
    (score q answer)
    (questions_suivantes BdU)                    ;;Après on cherche les questions suivantes
    )
  )
;--------------------------Fonctions-----------------------------

  
;;-------------1. Fonctions recherche----------------

(defun regles_candidates (BF BR)      ;;cette fonction trouve les regles candidates
  (let (ensemble_candidate regle
        i ok p fait) 
    (dolist (r regles)
      (setq regle (assoc r BR)
          i 1
          ok t)
      (loop
        (setq p (nth i regle)
            fait (assoc (car p) BF))
        (if fait
            (if (eq (car fait) 'substance_consomme)
                (if (not (= (cadr p) (cadr fait))) (setq ok nil))
              (if (< (cadr fait) (cadr p)) (setq ok nil)))
          (setq ok nil)
        ) 
        (setq i (+ i 1))
        (when (or (> i (- (length regle) 2)) (not ok)) (return-from nil)) 
      ) 
      (if ok (push r ensemble_candidate))
    )    
    ensemble_candidate 
  )
)  

;;La fonction ci-dessous cherche d'abord les regles candidates, il choix un regle, applique et change BF 
;;Puis on retire cette regles
;;On continue jusqu'à ce qu'on trouve aucune nouvelle regle candidate

(defun moteur_chainage_avant ()
  (dolist (r (regles_candidates BF BR))
    (pushnew r EC))
  (if (null EC) (return-from moteur_chainage_avant nil))
  (let (conclusion regle)
    (setq regle (pop EC))
    (setq conclusion (car (last (assoc regle BR))))
    (if (symbolp conclusion) (setq conclusion (list conclusion)))
    (if (eq (car conclusion) 'trouble) 
        (setq BF (push conclusion BF))
      (progn
        (dolist (x conclusion)
          (if (assoc x BF)
              (setf (cadr (assoc x BF)) (+ (cadr (assoc x BF)) 1))
            (setq BF (push (list x 1) BF)))
        )
      )  
    )
    (supprime_regle regle)
  )
  (moteur_chainage_avant )  ;appel recursif
)

;;--------------2. Autres fonctions------------------
(defun init_regles ()        ;;Créer liste de tous les regle
  (setq regles nil)
  (setq EC nil)
  (dolist (x BR)
    (push (car x) regles)
  )    
)    

(defun supprime_regle (r)        ;;sert à retirer une regle
  (setq regles (remove r regles))
)


(defun init_BF(l)                 ;;créer base de fait d'après base d'utilisateur
  (dolist (x l)
    (pushnew (assoc (nth 2 (assoc x BdQ)) BdU) BF :test #'equal))
)

(defun verifier_phase_bipolaire()
  (when (and (member '(trouble "trouble bipolaire phase maniaque") BF :test #'equal)
             (member '(trouble "trouble bipolaire phase depressif") BF :test #'equal))
    (push '(trouble "trouble bipolaire phase mixed") BF)
    (remove '(trouble "trouble bipolaire phase maniaque") BF :test #'equal)
    (remove '(trouble "trouble bipolaire phase depressif") BF :test #'equal))
) 
      
(defun affichage()               ;;affiche les troubles trouvées sinon affiche les symptômes
  (print "Troubles trouvees: ")
  (let ((zone_recherche BF) a_afficher ok)
    (loop
      (setq a_afficher (assoc 'trouble zone_recherche)) 
      (if (null a_afficher) (return-from nil))
      (print (cadr a_afficher))
      (setq ok t)
      (setq zone_recherche (cdr (member a_afficher zone_recherche :test #'equal)))
    )
    (when (not ok)
      (print "Aucune trouble est trouvee dans notre base de donnee! Felicitation! Vous ete libre de maladie mental")
      (print "Des symptomes potentielles trouvees avec leurs points d'evaluation: ")
      (format t "~{~&~a~}" BF)
    )
  )
)

;-----BASE DE QUESTIONS-----;

(setq BdQ '(
           
           ;---NIVEAU 0---;
           
           (Q1 "Avez-vous d�j� consomm� une drogue au cours de votre vie ? (alcool, tabac, marijuana, ou autres drogues dures) ?"  consommation_substance
               (1 "Jamais" 0)
               (2 "Exceptionnellement (une ou deux fois seulement)." 1)
               (3 "Occasionnellement (plusieurs fois dans l�ann�e)." 2)
               (4 "R�guli�rement (plusieurs fois par mois)." 3)
               (5 "Quasi-quotidiennement." 4)
               )
           (Q2 "Comment est votre agenda ?"  desorganisation
               (1 " Tout est organis� des semaines � l�avance." 0)
               (2 " Je m�arrange pour tout planifier et m�y tiens au mieux possible." 0)
               (3 " J�essaye de planifier en avance mais j�ai du mal � m�y tenir." 1)
               (4 " Impossible de pr�voir � l�avance ce que je vais faire." 2)
               )
           (Q3 "Avez-vous d�j� fait l'exp�rience d'hallucination (auditives ou visuelles) ?"  hallucination
               (1 "Jamais." 0)
               (2 "Ca m�est arriv� exceptionnellement." 1)
               (3 "R�guli�rement (plusieurs fois dans l�ann�e)." 2)
               (4 "Fr�quemment." 3)
               )
           (Q4 "Combien d'heures dormez-vous en moyenne chaque nuit ?"  insomnie
               (1 "Plus de 8 heures." 0)
               (2 "Entre 6 et 8 heures." 1)
               (3 "Entre 4 et 6 heures." 2)
               (4 "Moins de 4 heures." 3)
               )
           (Q5 "Vous arrive-t-il de mentir pour vous sortir de situations embarrassantes ?"  mensonges
               (1 "Jamais." 0)
               (2 "Seulement si je ne vois pas d'autres solutions." 1)
               (3 "De temps en temps." 2)
               (4 "C�est un automatisme." 3)
               )
           (Q6 "Avez-vous v�cu un �pisode particuli�rement douloureux/stressant/p�nible au cours de votre vie ?"  traumatisme
               (1 "Non." 0)
               (2 "Je crois." 1)
               (3 "Oui." 2)
               )
           (Q7 "Comment organisez-vous vos repas ?"  frequence_repas
               (1 "Je m�efforce de manger r�guli�rement � des horaires d�finis." 0)
               (2 "Je mange lorsque j�en ai le temps/l�envie." 1)
               (3 "Je saute r�guli�rement des repas." 2)
               )
           (Q10 "Comment d�cririez-vous votre app�tit ?"  appetit
                (1 "J�ai faim � l�heure des repas." 0)
                (2 "J�ai souvent faim et j�ai tendance � grignoter." 1)
                (3 "Je mange tout au long de la journ�e." 2)
                (4 "J�ai rarement et je m�efforce � manger." 1)
                (5 "J�ai tr�s rarement faim et peu d�app�tit." 2)
                )
           (Q11 "�tes-vous col�rique ?"  colere
                (1 "Non, je suis de nature plut�t calme." 0)
                (2 "Il m�arrive assez r�guli�rement de me mettre en col�re." 1)
                (3 "J�explose presque quotidiennement." 2)
                )
           (Q12 "Discutez-vous beaucoup ?"  bavard
                (1 "J�ai tendance � �couter les conversations plut�t que d�y participer." 0)
                (2 "Je discute lorsque j�ai la parole." 0)
                (3 "Je parle plut�t beaucoup." 1)
                (4 "Je ne peux pas m�en emp�cher." 2)
                )
           (Q13 "Comment r�agissez-vous lorsque vous avez beaucoup de travail ?"  stress
                (1 "Je m�efforce de rester calme et lucide." 0)
                (2 "Je panique un peu mais arrive � bien g�rer mon stress." 0)
                (3 "J�ai tendance � m�inqui�ter et cela me nuit." 1)
                (4 "Je m�inqui�te beaucoup trop." 2)
                )
           (Q14 "Y-a-t-il beaucoup de sujets qui vous inqui�tent ou des sources de peurs (phobies ?)"  peur
                (1 "Non." 0)
                (2 "Un peu mais je ne pense pas plus qu�un autre." 1)
                (3 "Je m�inqui�te � propos de beaucoup de sujets." 2)
                )

           ;---NIVEAU 1---;
           
           (Q16 "L�anxi�t� :"  anxiete
                (1 "Ne vous a jamais vraiment touch�." 0)
                (2 "Vous pensez la g�rer et elle n�est pas un probl�me majeur." 1)
                (3 "Vous habite trop souvent." 2)
                (4 "Vous d�finit." 3)
                )
           (Q17 "Vous dites avoir d�j� consomm� une drogue. Laquelle �tait-ce ?"  substance_consommee
                (1 "Drogue type tabac, alcool." 1)
                (2 "Drogue  douce (type cannabis)." 2)
                (3 "Drogue dure (type h�ro�ne)." 3)
                )
           (Q18 "Ressentez-vous un d�sir de consommation de cette drogue ?"  desir_substance
                (1 "Non pas particuli�rement. Je peux m�en passer ais�ment." 0)
                (2 "Un peu. La consommation m�apaise, me fait plaisir." 1)
                (3 "Oui j�en ressens le besoin, je ne m�imagine pas m�en passer." 2)
                )
           (Q19 "Dans votre journ�e, lorsque vous avez du temps libre :"  hyperactivite
                (1 "Vous vous reposez, faites des activit�s calmes." 0)
                (2 "Vous le consacrez surtout au sport." 1)
                (3 "Vous n�avez pas de temps libre." 2)
                )
           (Q20 "Lors d�une r�union, d�une conf�rence ou d�un cours :"  inattention
                (1 "Vous avez tendance � suivre de bout en bout sans ininterruption." 0)
                (2 "Vous vous efforcez de suivre mais il vous arrive de penser � autre chose." 1)
                (3 "Il vous est difficile de vous concentrer tant vous avez la t�te ailleurs." 2)
                (4 "Vous n�arrivez pas � suivre. Vous discutez et/ou pensez � autre chose." 3)
                )
           (Q21 "Si quelqu�un s�oppose � vos id�es ou plans :"  irritabilite
                (1 "Pas de probl�me." 0)
                (2 "Cela vous �nerve." 1)
                )
           (Q22 "Votre environnement :"  maniaque
                (1 "Vous vous y adaptez assez facilement." 0)
                (2 "Chez vous, tout est bien rang� et propre, mais vous tol�rez l�ext�rieur." 1)
                (3 "Le d�sordre et la salet� vous stressent et vous avez tendance � ranger ou nettoyer." 2)
                )
           (Q23 "Vos pens�es :"  tristesse
                (1 "Sont plut�t joyeuses. Vous voyez la vie du bon c�t�." 0)
                (2 "Vous avez quelques id�es noires mais elles ne vous envahissent pas l�esprit." 1)
                (3 "Sont plut�t tristes." 2)
                )
           (Q24 "L�app�tit :"  trouble_appetit
                (1 "le votre vous semble tout � fait normal par rapport aux autres." 0)
                (2 "est un probl�me : vous avez tendance � trop ou pas assez manger." 1)
                )
           
           ;---SPECIAL : TROUBLES BIPOLAIRES---;
           
           (Q25 "Avez-vous d�j� v�cu une phase de d�pression ?"  trouble_bipolaire
                (1 "Oui." 1)
                (2 "Non." 0)
                )
           (Q26 " Avez-vous d�j� v�cu une phase maniaque ?"  trouble_bipolaire
                (1 "Oui." 1)
                (2 "Non." 0)
                )
            )
      )


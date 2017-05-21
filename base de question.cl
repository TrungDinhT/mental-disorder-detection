;-----BASE DE QUESTIONS-----;

(setq BdQ '(
           
           ;---NIVEAU 0---;
           
           (Q1 "Avez-vous déjà consommé une drogue au cours de votre vie ? (alcool, tabac, marijuana, ou autres drogues dures) ?"  consommation_substance
               (1 "Jamais" 0)
               (2 "Exceptionnellement (une ou deux fois seulement)." 1)
               (3 "Occasionnellement (plusieurs fois dans l’année)." 2)
               (4 "Régulièrement (plusieurs fois par mois)." 3)
               (5 "Quasi-quotidiennement." 4)
               )
           (Q2 "Comment est votre agenda ?"  desorganisation
               (1 " Tout est organisé des semaines à l’avance." 0)
               (2 " Je m’arrange pour tout planifier et m’y tiens au mieux possible." 0)
               (3 " J’essaye de planifier en avance mais j’ai du mal à m’y tenir." 1)
               (4 " Impossible de prévoir à l’avance ce que je vais faire." 2)
               )
           (Q3 "Avez-vous déjà fait l'expérience d'hallucination (auditives ou visuelles) ?"  hallucination
               (1 "Jamais." 0)
               (2 "Ca m’est arrivé exceptionnellement." 1)
               (3 "Régulièrement (plusieurs fois dans l’année)." 2)
               (4 "Fréquemment." 3)
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
               (4 "C’est un automatisme." 3)
               )
           (Q6 "Avez-vous vécu un épisode particulièrement douloureux/stressant/pénible au cours de votre vie ?"  traumatisme
               (1 "Non." 0)
               (2 "Je crois." 1)
               (3 "Oui." 2)
               )
           (Q7 "Comment organisez-vous vos repas ?"  frequence_repas
               (1 "Je m’efforce de manger régulièrement à des horaires définis." 0)
               (2 "Je mange lorsque j’en ai le temps/l’envie." 1)
               (3 "Je saute régulièrement des repas." 2)
               )
           (Q10 "Comment décririez-vous votre appétit ?"  appetit
                (1 "J’ai faim à l’heure des repas." 0)
                (2 "J’ai souvent faim et j’ai tendance à grignoter." 1)
                (3 "Je mange tout au long de la journée." 2)
                (4 "J’ai rarement et je m’efforce à manger." 1)
                (5 "J’ai très rarement faim et peu d’appétit." 2)
                )
           (Q11 "Êtes-vous colérique ?"  colere
                (1 "Non, je suis de nature plutôt calme." 0)
                (2 "Il m’arrive assez régulièrement de me mettre en colère." 1)
                (3 "J’explose presque quotidiennement." 2)
                )
           (Q12 "Discutez-vous beaucoup ?"  bavard
                (1 "J’ai tendance à écouter les conversations plutôt que d’y participer." 0)
                (2 "Je discute lorsque j’ai la parole." 0)
                (3 "Je parle plutôt beaucoup." 1)
                (4 "Je ne peux pas m’en empêcher." 2)
                )
           (Q13 "Comment réagissez-vous lorsque vous avez beaucoup de travail ?"  stress
                (1 "Je m’efforce de rester calme et lucide." 0)
                (2 "Je panique un peu mais arrive à bien gérer mon stress." 0)
                (3 "J’ai tendance à m’inquiéter et cela me nuit." 1)
                (4 "Je m’inquiète beaucoup trop." 2)
                )
           (Q14 "Y-a-t-il beaucoup de sujets qui vous inquiètent ou des sources de peurs (phobies ?)"  peur
                (1 "Non." 0)
                (2 "Un peu mais je ne pense pas plus qu’un autre." 1)
                (3 "Je m’inquiète à propos de beaucoup de sujets." 2)
                )

           ;---NIVEAU 1---;
           
           (Q16 "L’anxiété :"  anxiete
                (1 "Ne vous a jamais vraiment touché." 0)
                (2 "Vous pensez la gérer et elle n’est pas un problème majeur." 1)
                (3 "Vous habite trop souvent." 2)
                (4 "Vous définit." 3)
                )
           (Q17 "Vous dites avoir déjà consommé une drogue. Laquelle était-ce ?"  substance_consommee
                (1 "Drogue type tabac, alcool." 1)
                (2 "Drogue  douce (type cannabis)." 2)
                (3 "Drogue dure (type héroïne)." 3)
                )
           (Q18 "Ressentez-vous un désir de consommation de cette drogue ?"  desir_substance
                (1 "Non pas particulièrement. Je peux m’en passer aisément." 0)
                (2 "Un peu. La consommation m’apaise, me fait plaisir." 1)
                (3 "Oui j’en ressens le besoin, je ne m’imagine pas m’en passer." 2)
                )
           (Q19 "Dans votre journée, lorsque vous avez du temps libre :"  hyperactivite
                (1 "Vous vous reposez, faites des activités calmes." 0)
                (2 "Vous le consacrez surtout au sport." 1)
                (3 "Vous n’avez pas de temps libre." 2)
                )
           (Q20 "Lors d’une réunion, d’une conférence ou d’un cours :"  inattention
                (1 "Vous avez tendance à suivre de bout en bout sans ininterruption." 0)
                (2 "Vous vous efforcez de suivre mais il vous arrive de penser à autre chose." 1)
                (3 "Il vous est difficile de vous concentrer tant vous avez la tête ailleurs." 2)
                (4 "Vous n’arrivez pas à suivre. Vous discutez et/ou pensez à autre chose." 3)
                )
           (Q21 "Si quelqu’un s’oppose à vos idées ou plans :"  irritabilite
                (1 "Pas de problème." 0)
                (2 "Cela vous énerve." 1)
                )
           (Q22 "Votre environnement :"  maniaque
                (1 "Vous vous y adaptez assez facilement." 0)
                (2 "Chez vous, tout est bien rangé et propre, mais vous tolérez l’extérieur." 1)
                (3 "Le désordre et la saleté vous stressent et vous avez tendance à ranger ou nettoyer." 2)
                )
           (Q23 "Vos pensées :"  tristesse
                (1 "Sont plutôt joyeuses. Vous voyez la vie du bon côté." 0)
                (2 "Vous avez quelques idées noires mais elles ne vous envahissent pas l’esprit." 1)
                (3 "Sont plutôt tristes." 2)
                )
           (Q24 "L’appétit :"  trouble_appetit
                (1 "le votre vous semble tout à fait normal par rapport aux autres." 0)
                (2 "est un problème : vous avez tendance à trop ou pas assez manger." 1)
                )
           
           ;---SPECIAL : TROUBLES BIPOLAIRES---;
           
           (Q25 "Avez-vous déjà vécu une phase de dépression ?"  trouble_bipolaire
                (1 "Oui." 1)
                (2 "Non." 0)
                )
           (Q26 " Avez-vous déjà vécu une phase maniaque ?"  trouble_bipolaire
                (1 "Oui." 1)
                (2 "Non." 0)
                )
            )
      )


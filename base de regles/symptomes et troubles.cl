;-----PALIERS SYMPTÔMES  (BR)   -----;

(setq BR_paliers_symptomes '(
                         
                            ;---NIVEAU 0---;
                            ;(niveau_0
                             ((Consommation_substance 1) (substance_consommee desir_substance))
                             ((desorganisation 1) (hyperactivite inattention trouble_addictif))
                             ((hallucination 2) schizophrenie)
                             ((insomnie 2) tristesse)
                             ((mensonges 2) personalite_antisociale)
                             ((traumatisme 1) stress_post_traumatique)
                             ((frequence_repas 1) trouble_appetit)
                             ((appetit 1) trouble_appetit)
                             ((colere 1) (irritabilite maniaque))
                             ((bavard 1) (hyperactivite inattention))
                             ((stress 1) (anxiete maniaque))
                             ((peur 1) anxiete)
                             ((imc 1) trouble_appetit)
                             ;)
                            
                            ;---NIVEAU 1---;
                            ;(niveau_1
                             ((anxiete 2) (schizophrenie troubles_obsessionnels_compulsifs stress_post_traumatique troubles_bipolaires depression))
                             ((substance_consommee 1) trouble_addictif)
                             ((desir_substance 1) trouble_addictif)
                             ((hyperactivite 1) (troubles_bipolaires personnalite_antisociale trouble_deficit_de_l_attention_hyperactivite))
                             ((inattention 2) (depression troubles_bipolaires stress_post_traumatique schizophrenie trouble_deficit_de_l_attention_hyperactivite))
                             ((irritabilité 1) (depression stress_post_traumatique personnalite_antisociale))
                             ((maniaque 1) (troubles_obsessionnels_compulsifs troubles_bipolaires))
                             ((tristesse 1) (depression troubles_bipolaires troubles_obsessionnels_compulsifs))
                             ((trouble_appétit 1) (depression troubles_bipolaires))
                             ;)

                            ;---NIVEAU 2---;
                            ;(niveau_2
                             ((trouble_addictif 2) -1)
                             ((trouble_deficit_de_l_attention_hyperactivite 2) -1)
                             ((Personalite_antisociale 3) -1)
                             ((schizophrenie 3) -1)
                             ((troubles_obsessionnels_compulsifs 3) -1)
                             ((stress_post_traumatique 4) -1)
                             ((depression 5) -1)		;pour troubles_bipolaires
                             ;)
                         
                            ;---NIVEAU 3---;
                            ;(niveau_3
                             ((troubles_bipolaires 20) -1) 
                            ; )
                            )
    )

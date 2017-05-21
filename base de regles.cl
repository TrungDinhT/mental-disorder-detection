;------------------------Base de reglès---------------------------
(setq BR
      '(
        ;;pour la conclusion de chaque regle est implicite pour une incrementation de 1 dans son point dans base de fait
        ;;------------------niveau 0----------------------
       
        (R01 (imc 1) appetit_noticed)                  
        (R02 (appetit 1) appetit_noticed)    
        (R03 (frequence_repas 1) appetit_noticed)  
        (R04 (desorganisation 1) inattention)
        (R05 (stress 1) (anxiete maniaque))
        (R06 (peur 1) anxiete)
        (R07 (insomnie 1) tristesse)
        (R08 (insomnie 2) maniaque) 
        (R09 (colere 1) (maniaque irritabilite))
        (R010 (bavard 1) (inattention hyperactivite))
        (R011 (stress 1) (anxiete maniaque))
        
        ;;------------------niveau 1----------------------    
       
        (R11 (appetit_noticed 2) trouble_appetit)
        (R12 (hyperactivite 2) maniaque)
        (R13 (inattention 2) maniaque)
               
        ;;--------------------niveau 2----------------------
        
        (R21 (substance_consommee 3) trouble_addictif)
        (R22 (substance_consommee 2) (consommation_substance 3) (desir_substance 2) trouble_addictif) 
        (R23 (substance_consommee 1) (consommation_substance 4) (desir_substance 2) trouble_addictif)
        
        (R24 (tristesse 1) (anxiete 2) 
             (inattention 2) (trouble_appetit 1) 
             (insomnie 2) trouble_depressif) 
       
        (R25 (traumatisme 1) (anxiete 2)
             (irritabilite 1) (hyperactivite 2)
             (inattention 2) (insomnie 2) 
             trouble_stress_post_traumatique)
        
        (R26 (maniaque 3) (tristesse 1) 
             (anxiete 2)
             troubles_obsessionnels_compulsifs)
        
        (R27 (hallucination 2)(desorganisation 1) 
             (inattention 2) (anxiete 2)
             schizophrenie)

        (R28 (mensonges 2) (irritabilite 1) 
             (desorganisation 1) (hyperactivite 2) 
             trouble_personalite_antisocial)

        (R29 (hyperactivite 2) (inattention 2)
             (desorganisation 1)  
              trouble_deficit_attention_hyperactivite)
        
        ;;--------------------niveau 3----------------------
        
        (R31 (trouble_addictif 1) (trouble "trouble addictif"))
        (R32 (trouble_depresif 1) (trouble "trouble depressif"))
        (R33 (trouble_bipolaire 2) (maniaque 3) (trouble "trouble bipolaire phase maniaque"))
        (R34 (trouble_bipolaire 2) (trouble_depressif 1) (trouble "trouble bipolaire phase depressif"))
        (R35 (trouble_stress_post_traumatique 1) (trouble "trouble stress post traumatique"))
        (R36 (schizophrenie 1) (trouble "schizophrenie"))
        (R37 (trouble_personalite_antisocial 1) (trouble "trouble personalite type antisocial"))
        (R38 (trouble_deficit_attention_hyperactivite 1) (trouble "trouble deficit de l'attention hyperactivite (TDAH)"))
        (R39 (troubles_obsessionnels_compulsifs 1) (trouble "troubles obsessionnels compulsifs"))
       )
)
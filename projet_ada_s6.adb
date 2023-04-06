with ada.Text_IO, ada.Integer_Text_IO, ada.Characters, Baby_sitter, Famille;
use ada.Text_IO, ada.Integer_Text_IO, ada.Characters, Baby_sitter, Famille;
procedure Projet_Ada_S6 is
   choix : Character; teteB : T_listebaby; NewB : T_babysitter;
     F : T_arbrefamille; newF : T_Famille;
begin
   loop
      Put_Line ("1 : Afficher les listes de babysitter et de familles ");
      Put_Line ("2 : Ajout d'une nouvelle famille ");
      Put_Line ("3 : Visualisation du planning ");
      Put_Line ("4 : Demande de garde ");
      Put_Line ("5 : Ajout d'une babysitter ");
      Put_Line ("6 : Suppression d'une babysitter ");
      Put_Line ("7 : Annulation d'une garde ");
      Put_Line ("8 : Passer au lendemain ");
      Put_Line ("9 : Désinscription d'une famille ");
      Put_Line ("Q : Quitter ");
      Put ("Choissisez une option : ");
      get (choix);Skip_Line;
      case choix is
         when '1' => VisuListeB(teteB); VisuFamille(F);
         when '2' => SaisieFamille(newF); AjoutFamille(F, newF);
         when '5' =>  ajoutBabysitter(teteB , NewB);
         when 'Q'|'q' => exit;
         when others => put ("Erreur de saisie ");New_Line;
      end case;
   end loop;

end Projet_Ada_S6;

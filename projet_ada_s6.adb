WITH Ada.Text_IO, Ada.Integer_Text_IO, Ada.Characters, Baby_Sitter, famille, Gestion_Outils;
USE Ada.Text_IO, Ada.Integer_Text_IO, Ada.Characters, Baby_Sitter, famille, Gestion_Outils;
PROCEDURE Projet_Ada_S6 IS
   Choix : Character;
   TeteB : T_Listebaby;
   NewB, B  : T_Babysitter;
   F     : T_Arbrefamille;
   NewF  : T_Famille;
   NbF: Integer;
   NomF, Dem : T_Mot;
   K: integer;
BEGIN
   LOOP
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
      Get (Choix);
      Skip_Line;
      CASE Choix IS
         WHEN '1' =>
            VisuListeB(TeteB);
            VisuFamille(F);
         WHEN '2' =>
            SaisieFamille(NewF);
            AjoutFamille(F, NewF);
         WHEN '3' =>
            Afficher_Planning_Baby(F, NbF, TeteB);
         WHEN '4' =>
            Put("Nom de la famille qui demande la garde  "); Put("  "); Get_line(NomF, K);
            Dem := Demande_Garde(F,NomF);
            Put("La demande est elle possible?");
            Put(Dem);
            New_Line;
            New_line;

         WHEN '5' =>
            AjoutBabysitter(TeteB , NewB);
         WHEN 'Q'|'q' =>
            EXIT;
         WHEN OTHERS =>
            Put ("Erreur de saisie ");
            New_Line;
      END CASE;
   END LOOP;

END Projet_Ada_S6;
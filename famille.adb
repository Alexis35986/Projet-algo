WITH Ada.Text_IO, Ada.Integer_Text_IO, Ada.Characters;
USE Ada.Text_IO, Ada.Integer_Text_IO, Ada.Characters;
PACKAGE BODY Famille IS
   PROCEDURE VisuFamille (
         F : IN     T_Arbrefamille) IS
   BEGIN
      IF F /= NULL THEN
         Put("Nom de la famille : "); Put (F.Cle.Nom); New_line;
         Put("Nombre d'enfants : "); Put (F.Cle.Nbr_Enfant, 2); New_line;
         FOR I IN F.Cle.Age_Enfant'RANGE LOOP
            If F.Cle.Age_Enfant(I) /= 0 then
               Put (F.Cle.Age_Enfant(I), 2);
            END IF;
         END LOOP;
         VisuFamille(F.Fg);
         VisuFamille(F.Fd);
      END IF;
   END VisuFamille;

   PROCEDURE AjoutFamille (
         F    : IN OUT T_Arbrefamille;
         NewF : IN     T_Famille) IS
   BEGIN

      IF F = NULL THEN
         F:= NEW T_Noeud'(NewF, NULL, NULL);
      ELSIF NewF.Nom < F.Cle.Nom THEN
         AjoutFamille(F.Fg, NewF);
      ELSE
         AjoutFamille(F.Fd, NewF);
      END IF;
   END AjoutFamille;

   PROCEDURE SaisieFamille (
         NewF : IN OUT T_Famille) IS
      K : Integer;
   BEGIN
      Put("Nom de la famille");
      New_Line;
      Get_Line(NewF.Nom, K);
      Put ("Nombre d'enfants");
      New_Line;
      Get(NewF.Nbr_Enfant);
      Put ("Ages de tous les enfants ");
      FOR I IN T_NbEnfant'RANGE LOOP
         Get (NewF.Age_Enfant(I));
         New_Line;
         EXIT WHEN NewF.Nbr_Enfant = I;
      END LOOP;
   END SaisieFamille;


 PROCEDURE Afficher_Planning_Baby (F : T_Arbrefamille ; NbF : IN Integer; TeteB: IN OUT T_Listebaby) IS

   BEGIN
      Put("Affichage des plannings des babysitters");
      New_Line;
      Put("Nom du Babysitter :   "); Put(TeteB.Babysitter.Nom);
      New_Line;
      New_line;
         FOR J IN T_Semaine'RANGE LOOP
         FOR K IN T_Journee'RANGE LOOP
            Put(T_Semaine'Image(J)); Put("  "); Put(T_Journee'Image(K));
            New_Line;
            New_line;
            Put(F.Cle.Nom);
         New_Line;
         New_Line;

                  New_Line;
                  Put("   ");

            END LOOP;
         END LOOP;

   END Afficher_Planning_Baby;

   Function Demande_Garde (F: T_Arbrefamille; NomF : T_Mot) return T_Mot IS
      ResG : T_Mot;
   BEGIN
      IF F = NULL THEN
         RETURN("                    ");
      ELSIF F.Cle.Nom = NomF THEN
         RETURN(NomF);
      ELSE
         ResG := Demande_Garde(F.Fg, NomF);
         IF ResG /= ("                    ") THEN
            RETURN(ResG);
         ELSE
            RETURN Demande_Garde(F.Fd, NomF);
         END IF;
      END IF;
      End Demande_Garde;


END Famille;
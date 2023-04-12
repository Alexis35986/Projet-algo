WITH Ada.Text_IO, Ada.Integer_Text_IO, Ada.Characters, Gestion_Outils, famille;
USE Ada.Text_IO, Ada.Integer_Text_IO, Ada.Characters, Gestion_Outils, famille;
PACKAGE BODY Baby_Sitter IS

   PROCEDURE VisuListeB (
         TeteB : IN     T_Listebaby) IS
      NbBaby : Integer;
   BEGIN
      NbBaby := CountBaby(TeteB);
      IF (TeteB /= NULL) THEN
         Put ("Nom : ");
         Put (TeteB.Babysitter.Nom);
         New_Line;
         Put ("Prenom : ");
         Put (TeteB.Babysitter.Prenom);
         New_Line;
         Put ("Age : ");
         Put (TeteB.Babysitter.Age);
         New_Line;
         VisuListeB(TeteB.Suiv);
      END IF;
   END VisuListeB;


   PROCEDURE AjoutBabysitter (
         TeteB : IN OUT T_Listebaby;
         NewB  : IN OUT T_Babysitter) IS
      K : Integer;
   BEGIN
      Put("Nom de la babysitter");
      New_Line;
      Get_Line(NewB.Nom, K);
      Put ("Prenom de la babysitter");
      New_Line;
      Get_Line(NewB.Prenom, K);
      Put ("Age de la babysitter");
      New_Line;
      Get (NewB.Age);
      TeteB := NEW T_Cellbaby'(NewB, TeteB);
   END AjoutBabysitter;

   FUNCTION CountBaby (
         TeteB : IN     T_Listebaby)
     RETURN Integer IS
   BEGIN
      IF TeteB = NULL THEN
         RETURN (0);
      ELSE
         RETURN (1+ CountBaby (TeteB.Suiv));
      END IF;
   END CountBaby;


   PROCEDURE Afficher_Planning_Baby (Famille : T_Famille ; NbF : IN Integer; TeteB: T_Babysitter) IS

   BEGIN
      Put("Affichage des plannings des babysitters");
      New_Line;
         FOR J IN T_Semaine'RANGE LOOP
            FOR K IN T_Journee'RANGE LOOP
         Put("Nom"); Put(Famille.Nom);
         New_Line;
         New_Line;

         New_Line;
                  New_Line;
                  Put("   ");

            END LOOP;
         END LOOP;

         END Afficher_Planning_Baby;




END Baby_Sitter;
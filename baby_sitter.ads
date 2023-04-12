WITH Ada.Text_IO, Ada.Integer_Text_IO, Ada.Characters, Gestion_Outils;
USE Ada.Text_IO, Ada.Integer_Text_IO, Ada.Characters, Gestion_Outils;
PACKAGE Baby_Sitter IS
   TYPE T_Planning_Babysitter IS ARRAY (T_Semaine RANGE Lundi..Samedi, T_Journee) OF T_Mot;
   TYPE T_Babysitter IS
      RECORD
         Nom,
         Prenom                    : T_Mot                 := (OTHERS => ' ');
         Age                       : Integer;
         Planning_Semaine_En_Cours : T_Planning_Babysitter;
         Planning_Semaine_A_Venir  : T_Planning_Babysitter;
         Salaire_Semaine           : Integer               := 0;
         Demande_Depart            : Boolean               := False;
      END RECORD;

   TYPE T_Cellbaby;
   TYPE T_Listebaby IS ACCESS T_Cellbaby;
   TYPE T_Cellbaby IS
      RECORD
         Babysitter : T_Babysitter;
         Suiv       : T_Listebaby;
      END RECORD;
   PROCEDURE VisuListeB (
         TeteB : IN     T_Listebaby);
   PROCEDURE AjoutBabysitter (
         TeteB : IN OUT T_Listebaby;
         NewB  : IN OUT T_Babysitter);
   FUNCTION CountBaby (
         TeteB : IN     T_Listebaby)
      RETURN Integer;



END Baby_Sitter;
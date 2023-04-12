WITH Ada.Text_IO, Ada.Integer_Text_IO, Ada.Characters;
USE Ada.Text_IO, Ada.Integer_Text_IO, Ada.Characters;
PACKAGE Gestion_Outils IS
   SUBTYPE T_Mot IS String(1..20);
   TYPE T_Semaine IS
         (Lundi,
          Mardi,
          Mercredi,
          Jeudi,
          Vendredi,
          Samedi,
          Dimanche);
   TYPE T_Journee IS
         (Matin,
          Midi,
          Soir);
   PROCEDURE Affiche1;
END Gestion_Outils;
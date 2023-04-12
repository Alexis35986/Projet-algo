WITH Ada.Text_IO, Ada.Integer_Text_IO, Ada.Characters, Gestion_Outils, Baby_Sitter;
USE Ada.Text_IO, Ada.Integer_Text_IO, Ada.Characters, Gestion_Outils, Baby_Sitter;
PACKAGE Famille IS
   SUBTYPE T_NbEnfant IS Integer RANGE 1..8;
   TYPE T_Age_Enfant IS ARRAY (T_NbEnfant) OF Integer;
   TYPE T_Famille IS
      RECORD
         Nom                : T_Mot        := (OTHERS => ' ');
         Nbr_Enfant         : T_NbEnfant   := 1;
         Age_Enfant         : T_Age_Enfant;
         Facture            : Integer      := 0;
         Dernier_Babysitter : T_Babysitter;
      END RECORD;

   TYPE T_Noeud;
   TYPE T_Arbrefamille IS ACCESS T_Noeud;
   TYPE T_Noeud IS
      RECORD
         Cle : T_Famille;
         Fg,
         Fd  : T_Arbrefamille;
      END RECORD;

   PROCEDURE VisuFamille (
         F : IN     T_Arbrefamille);
   PROCEDURE AjoutFamille (
         F    : IN OUT T_Arbrefamille;
         NewF : IN     T_Famille);
   PROCEDURE SaisieFamille (
      NewF : IN OUT T_Famille);
      PROCEDURE Afficher_Planning_Baby (F : T_Arbrefamille ; NbF : IN Integer; TeteB: IN OUT T_Listebaby);
 Function Demande_Garde (F: T_Arbrefamille; NomF : T_Mot) return T_Mot;
END Famille;

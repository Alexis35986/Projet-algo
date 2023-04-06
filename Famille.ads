with ada.Text_IO, ada.Integer_Text_IO, ada.Characters, gestion_Outils, Baby_sitter;
use ada.Text_IO, ada.Integer_Text_IO, ada.Characters, gestion_Outils, Baby_sitter;
package Famille is
   subtype T_nbEnfant is Integer range 1..8;
   Type T_age_Enfant is array (T_nbEnfant) of Integer;
   Type T_Famille is record
      Nom : T_mot := (others => ' ');
      nbr_Enfant : T_nbEnfant := 1;
      age_Enfant : T_age_Enfant;
      facture : Integer := 0;
      dernier_Babysitter : T_babysitter;
   end record;

   Type T_noeud ;
   Type T_arbrefamille is access T_noeud ;
   Type T_noeud is record
      Cle : T_famille ;
      Fg, Fd : T_arbrefamille ;
   End record ;

   procedure VisuFamille (F : IN T_arbrefamille);
   procedure AjoutFamille(F : IN OUT T_arbrefamille; newF : IN T_Famille);
   procedure SaisieFamille (newF : IN OUT T_Famille);
end Famille;

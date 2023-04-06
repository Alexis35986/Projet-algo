with ada.Text_IO, ada.Integer_Text_IO, ada.Characters, gestion_Outils;
use ada.Text_IO, ada.Integer_Text_IO, ada.Characters, gestion_Outils;
package Baby_sitter is
   type T_planning_babysitter is array (T_Semaine range Lundi..Samedi, T_Journee)of T_mot;
   type T_babysitter is record
      Nom, Prenom : T_mot := (others => ' ');
      age : integer;
      Planning_semaine_en_cours : T_planning_babysitter;
      Planning_semaine_a_venir : T_planning_babysitter;
      salaire_semaine : Integer := 0;
      demande_depart : Boolean := False;
   end record;

   Type T_cellbaby ;
   Type T_listebaby is access T_cellbaby ;
   Type T_cellbaby is record
      Babysitter : T_babysitter ;
      Suiv : T_listebaby ;
   End record ;
   procedure VisuListeB (teteB : IN T_listebaby);
   procedure ajoutBabysitter (teteB : IN OUT T_listebaby; NewB : IN OUT  T_babysitter);
   function countBaby (teteB : IN T_listebaby) return integer;
end Baby_sitter;

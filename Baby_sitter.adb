with ada.Text_IO, ada.Integer_Text_IO, ada.Characters, gestion_Outils;
use ada.Text_IO, ada.Integer_Text_IO, ada.Characters, gestion_Outils;
package body Baby_sitter is

   procedure VisuListeB (teteB : IN T_listebaby) is
      nbBaby : Integer;
   begin
      nbBaby := countBaby(teteB);
      if (teteB /= null) then
         put ("Nom : ");
         put (teteB.Babysitter.Nom);New_Line;
         put ("Prenom : ");
         put (teteB.Babysitter.Prenom);New_Line;
         put ("Age : ");
         put (teteB.Babysitter.age);New_Line;
         VisuListeB(teteB.Suiv);
      end if;
   end VisuListeB;


   procedure ajoutBabysitter (teteB : IN OUT T_listebaby; NewB : IN OUT T_babysitter) is
   k : integer;
   begin
      put("Nom de la babysitter");New_Line;
      Get_Line(NewB.Nom, k);
      put ("Prenom de la babysitter");New_Line;
      Get_Line(NewB.Prenom, k);
      put ("Age de la babysitter");New_Line;
      get (NewB.age);
      teteB := new T_cellbaby'(NewB, teteB);
   end ajoutBabysitter;

   function countBaby (teteB : IN T_listebaby) return integer is
   begin
      if teteB = null then
         return (0);
      else return (1+ countBaby (teteB.suiv));
      end if;
   end countBaby;

end Baby_sitter;

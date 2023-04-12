with ada.Text_IO, ada.Integer_Text_IO, ada.Characters;
use ada.Text_IO, ada.Integer_Text_IO, ada.Characters;
package body Famille is
   procedure VisuFamille (F : IN T_arbrefamille) is
   begin
      if F /= null then
         put ("Nom de la famille : ");
         put (F.Cle.Nom);New_Line;
         put ("Nombre d'enfants : ");
         put (F.Cle.nbr_Enfant);New_Line;
         put ("Age de tous les enfants : ");
         for i in F.Cle.age_Enfant'range loop
            if F.Cle.age_Enfant(i) /= 0 then
               put (F.Cle.age_Enfant(i));
            else exit;
            end if;
         end loop;
         New_Line;
         VisuFamille(F.Fg);
         VisuFamille(F.Fd);
      end if;
   end VisuFamille;

   procedure AjoutFamille(F : IN OUT T_arbrefamille; newF : IN T_Famille) is
   begin

      if F = null then
         F:= new T_noeud'(newF, null, null);
      elsif newF.Nom < F.cle.Nom then
         AjoutFamille(F.Fg, newF);
      else AjoutFamille(F.Fd, newF);
      end if;
   end AjoutFamille;

   procedure SaisieFamille (newF : IN OUT T_Famille) is
      k : Integer;
   begin
      put("Nom de la famille");New_Line;
      Get_Line(NewF.Nom, k);
      put ("Nombre d'enfants");New_Line;
      get(NewF.nbr_Enfant);
      put ("Ages de tous les enfants ");
      for i in T_nbEnfant'Range loop
         get (NewF.age_Enfant(i));New_Line;
         exit when newF.nbr_Enfant = i;
      end loop;
   end SaisieFamille;

end Famille;

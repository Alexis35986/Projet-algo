with ada.Text_IO, ada.Integer_Text_IO, ada.Characters;
use ada.Text_IO, ada.Integer_Text_IO, ada.Characters;
package gestion_Outils is
   subtype T_mot is string(1..20);
   Type T_semaine is (lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche);
   Type T_journee is (matin, midi, soir);
   procedure affiche1;
end gestion_Outils;

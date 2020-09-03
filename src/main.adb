with Ada.Text_IO; use Ada.Text_IO;
with Places;

procedure Main is
   P : Places.Disc_Pt := Places.Create(0.8, 0.2);
begin
   Places.Put (P);
   P := Places.Create (0.5, 0.5);
end Main;

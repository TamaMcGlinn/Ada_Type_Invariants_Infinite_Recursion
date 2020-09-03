with Ada.Text_IO;

package body Places is

   function Create (X : Float; Y : Float) return Disc_Pt is
   begin
      Ada.Text_IO.Put_Line ("Create");
      return (X, Y);
   end Create;

   function Return_Self (D: Disc_Pt) return Disc_Pt is
   begin
      return D;
   end Return_Self;

   procedure Do_Nothing (D: Disc_Pt) is
   begin
      null;
   end Do_Nothing;

   procedure Put (D: Disc_Pt) is
   begin
      Ada.Text_IO.Put_Line ("X: " & D.X'Image);
      Ada.Text_IO.Put_Line ("Y: " & D.Y'Image);
      Ada.Text_IO.Put_Line (if Check_In (D) then "Inside unit circle" else "Outside unit circle");
   end Put;

   function Check_In(D: Disc_Pt) return Boolean is
      -- E : Disc_Pt; -- this also infinitely recurses, but not if we supply it with values
   begin
      declare
         F : Disc_Pt := Return_Self (D); -- or comment this block and uncomment Do_Nothing for the procedure version
      begin
         null;
      end;
      -- Do_Nothing (D); -- oddly enough, for public procedures the type invariant expression is not called
      return (D.X**2 + D.Y**2 <= 1.0);
   end Check_In;

end Places;


package Places is
   type Disc_Pt is private
      with Type_Invariant => Check_In (Disc_Pt);

   function Check_In (D: Disc_Pt) return Boolean
      with Inline;

   function Create (X : Float; Y : Float) return Disc_Pt;

   -- function Return_Self (D: Disc_Pt) return Disc_Pt;
   -- -- I dare you to uncomment these, making the functions public
   -- procedure Do_Nothing (D: Disc_Pt);

   procedure Put (D: Disc_Pt);

private
   type Disc_Pt is
      record
         X, Y: Float range -1.0 .. +1.0;
      end record;

end Places;


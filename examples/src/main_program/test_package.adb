with Ada.Text_IO; use Ada.Text_IO;

package body Test_Package is

  procedure Prog (D : Days) is
  begin
    Put_Line ("primitive \n" & Days'Image (D));
  end Prog;

end Test_Package;

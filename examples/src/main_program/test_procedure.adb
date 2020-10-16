with Ada.Text_IO; use Ada.Text_IO;

procedure Test_Procedure is

  package Week is
    type Days is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
    -- Print day is a primitive of the type Days
    procedure Print_Day (D : Days);
    Global_Data : Days := Monday;
  end Week;

  package body Week is
    procedure Print_Day (D : Days) is
      Exit_Loop : Boolean := True;
      Cntr      : Integer := 0;
    begin
      Global_Data := Tuesday;
      Put_Line (Days'Image (D));
      loop
        Cntr := Cntr + 1;
        exit when Exit_Loop;
        Put_Line ("after exit condition");
        if Cntr > 5
         then
         Exit_Loop := True;
        end if;
      end loop;

    end Print_Day;
  end Week;

  use Week;
  type Weekend_Days is new Days range Saturday .. Sunday;
  -- A procedure Print_Day is automatically inherited here. It is as if
  -- the procedure
  --
  -- procedure Print_Day (D : Weekend_Days);
  --
  -- has been declared with the same body
  Sat : Weekend_Days := Saturday;
begin
  Print_Day (Sat);
  Print_Day (Global_Data);
end Test_Procedure;

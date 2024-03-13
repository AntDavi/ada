With Ada.Text_IO; Use Ada.Text_IO;
With Ada.Integer_Text_IO, Ada.Text_IO, Ada.Calendar;
Use Ada.Integer_Text_IO, Ada.Text_IO, Ada.Calendar;

Procedure HelloWorld is

  listachar: array (1..30) of Character;
  indice: Integer := 0;
  
  flag1: Integer := 1;
  flag2: Integer := 0;
  flag3: Integer := 0;
  
  turn: Integer := 0;
  
  task type TA;
    task body TA is
      x: Integer;
    begin
      while(indice <= 27) loop
        while(flag1 = 0) loop
          x := 0;
        end loop;
        listachar(indice) := 'a';
        indice := indice + 1;
        flag2 := 1;
        flag1 := 0;
      end loop;
  end TA;
  
  task type TB;
    task body TB is
      x: Integer;
    begin
      while(indice <= 28) loop
        while(flag2 = 0) loop
          x := 0;
        end loop;
        listachar(indice) := 'b';
        indice := indice + 1;
        flag3 := 1;
        flag2 := 0;
      end loop;
  end TB;
  
  task type TC;
    task body TC is
      x: Integer;
    begin
      while(indice <= 29) loop
        while(flag3 = 0) loop
          x := 0;
        end loop;
        listachar(indice) := 'c';
        indice := indice + 1;
        flag1 := 1;
        flag3 := 0;
      end loop;
      for I in 1 .. 30 loop
         Put(listachar(I));
      end loop;
  end TC;
  
  A: TA;
  B: TB;
  C: TC;

  begin
    turn := 1;

end HelloWorld;
program soal4;

var
  N, i, j: Integer;
  is_prima: Boolean;
  is_first_prima: Boolean;

begin
 
  Write('N: ');
  ReadLn(N);

  Write('Bilangan prima antara 1 dan ', N, ' adalah:');
  is_first_prima := True; 

  for i := 1 to N do
  begin
    is_prima := True; 
    
    
    if i <= 1 then
      is_prima := False 
    else if i = 2 then
      is_prima := True 
    else
    begin
      
      j := 2;
      while (j * j <= i) do
      begin
        if i mod j = 0 then
        begin
          is_prima := False;
          break;
        end;
        j := j + 1;
      end;
    end;


    if is_prima then
    begin
      if not is_first_prima then
        Write(', ');
      
      Write(i);
      is_first_prima := False;
    end;
  end;
  WriteLn;
end.
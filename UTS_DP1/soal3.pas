program Soal3;

var
  N, i: Integer;
  angka: Real;
  total: Real;
  rata_rata: Real;

begin
 
  Write('N: ');
  ReadLn(N);

  total := 0;

  for i := 1 to N do
  begin
    
    Write('Angka ke-', i, ': ');
    ReadLn(angka);

    total := total + angka;
  end;

  if N > 0 then
    rata_rata := total / N
  else
    rata_rata := 0;

  WriteLn('Jumlah Total: ', total:0:0);
  WriteLn('Rata-rata: ', rata_rata:0:1);
end.
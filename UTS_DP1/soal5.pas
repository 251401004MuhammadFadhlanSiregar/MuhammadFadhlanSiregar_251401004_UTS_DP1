program Soal5;

var
  namasiswa, labelangka: String;
  N, i, j, k, panjangbarismaks: Integer;

begin
  Write('Masukkan Nama Siswa: ');
  ReadLn(namasiswa);

  Write('Masukkan n: ');
  ReadLn(N); 

  WriteLn(namasiswa, ', inilah pola angka rahasiamu:');

  panjangbarismaks := N * 10; 

  i := 1;

  while i <= N do 
  begin
    if i mod 2 = 0 then
      labelangka := ' (genap)'
    else
      labelangka := ' (ganjil)';

    k := i * 10; 
    
    j := (panjangbarismaks - k) div 2;
    
    while j > 0 do
    begin
      Write('');
      j := j - 1;
    end;
    
    j := 1;
    
    repeat
      Write(i, labelangka, ' ');
      j := j + 1;
    until j > i;

    WriteLn;
    i := i + 1;
  end;

  WriteLn;
  WriteLn('Selamat, ', namasiswa, '! Kamu berhasil membuka pintu rahasia ke level berikutnya!');
end.
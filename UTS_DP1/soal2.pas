program soal2;

const
jp = 5;

var

nilaiakhir, i, lulus, mengulang: integer;
nama, indeks: string;

begin

for i := 1 to jp do
begin

write('Nama Praktikan ', i ,' : ');
readln(nama);

write('Berapa nilai akhirnya: ');
readln(nilaiakhir);

if nilaiakhir >= 90 then
indeks := 'A'
else if nilaiakhir >= 85 then
indeks := 'B+'
else if nilaiakhir >= 75 then
indeks := 'C+'
else if nilaiakhir >= 70 then
indeks := 'C'
else if nilaiakhir >= 65 then
indeks := 'D'
else 
indeks := 'E';

writeln('Indeks Nilai Praktikan ', i, ' : ', indeks);

if (indeks = 'A') or (indeks = 'B+') or (indeks = 'B') or (indeks = 'C') then
lulus := lulus + 1

else

if (indeks = 'C+') or (indeks = 'D') or (indeks = 'E') then
mengulang := mengulang + 1;

end;

writeln('Total Praktikan Lulus: ', lulus);
writeln('Total Praktikan Mengulang: ', Mengulang);

end.
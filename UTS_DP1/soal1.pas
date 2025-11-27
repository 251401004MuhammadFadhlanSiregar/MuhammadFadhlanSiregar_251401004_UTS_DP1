program soal1;

var
jenismobil: string;
harisewa, jaraktempuh, jaraksisa: integer;
biayaharian, biayajarak, totalbiaya: longint;

begin
    
    write('Masukkan Jenis Mobil (Ekonomi/Sedan/SUV) : ');
    readln(jenismobil);
    write('Pemesanan Berapa Hari : ');
    readln(harisewa);
    write('Berkendara Seberapa Jauh? (km) : ');
    readln(jaraktempuh);

    biayaharian := 0;

    if jenismobil = 'Ekonomi' then
    biayaharian := 300000
    else if jenismobil = 'Sedan' then
    biayaharian := 400000
    else if jenismobil = 'SUV' then
    biayaharian := 500000;

    biayaharian := biayaharian * harisewa;

    biayajarak := 0;
    jaraksisa := jaraktempuh;

    if jaraksisa > 0 then
    begin
    if jaraksisa >= 100 then
    begin
    biayajarak := biayajarak + (100 * 1500);
    jaraksisa := jaraksisa - 100;
    end
    else
    begin
    biayajarak := biayajarak + (jaraksisa * 1500);
    jaraksisa := 0
    end;
     end;

     if jaraksisa > 0 then
     begin
   if jaraksisa >= 100 then
   begin
   biayajarak := biayajarak + (100 * 1000);
   jaraksisa := jaraksisa - 100;
   end
   else
   begin
   biayajarak := biayajarak + (jaraksisa * 1000);
   jaraksisa := 0;
   end;
   end;

   if jaraksisa > 0 then
   biayajarak := biayajarak + (jaraksisa * 500);

   totalbiaya := biayaharian + biayajarak;

   writeln(totalbiaya);

   end.
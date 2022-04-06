program untit;
uses crt,dos;

var
hora,minuto,segundo,milisegundo:word;
begin
clrscr;
GetTime(hora,minuto,segundo,milisegundo);
write(' La Hora Es : ');
write(LO(hora),':',LO(minuto),':',LO(segundo));
readkey;
end.

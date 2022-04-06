program np1;
uses crt;

var
a,b,c:real;
resultado1,resultado2,resultado3:real;

begin
writeln('Buenas con este prgrama podra calcular ecuacion cuadratica');

writeln('ingrese a valor a');
readln(a);
writeln('ingrese valor de b');
readln(b);
writeln('ingrese valor de c');
readln(c);

if (a=0) and (b<>0) then
resultado3:=(-c/b);
writeln('el resultado es ',resultado3);

if (a=0) and (b=0) then
writeln('la ecuacion es degenerada')
else
resultado1:=(-b - (-0.5)*(b*b) -4*a*c)/(2*a);
resultado2:=(-b + (-0.5)*(b*b) -4*a*c)/(2*a);
writeln('el resultado de X1',resultado1:5:2);
writeln('el resultado de X2',resultado2:5:2);

readkey;
end.

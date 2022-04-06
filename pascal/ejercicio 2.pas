Program todos;
var proce: Integer;
var respuesta: Char;
Procedure blusas;
Var descuento,descuento1,descuento2,total,a: real;
articulo:string;
Begin
writeln('ingrese nombre del articulo');
readln(articulo);
writeln('ingrese valor del articulo');
readln(a);
writeln('ingrese valor del descuento');
readln(descuento1);
descuento:=descuento1/100;
descuento2:=descuento*a;
total:=a-descuento2;
writeln('el valor de su descuento es ',descuento:5:2);
writeln('el valor de su articulo es ', total:5:2);
writeln('gracian por su compra');
END;


Procedure chaquetas;
Var descuento,descuento1,descuento2,total,a: real;
articulo:string;
Begin
writeln('ingrese nombre del articulo');
readln(articulo);
writeln('ingrese valor del articulo');
readln(a);
writeln('ingrese valor del descuento');
readln(descuento1);
descuento:=descuento1/100;
descuento2:=descuento*a;
total:=a-descuento2;
writeln('el valor de su descuento es ',descuento:5:2);
writeln('el valor de su articulo es ', total:5:2);
writeln('gracian por su compra');
END;

Procedure pantalonesdama;
Var descuento,descuento1,descuento2,total,a: real;
articulo:string;
Begin
writeln('ingrese nombre del articulo');
readln(articulo);
writeln('ingrese valor del articulo');
readln(a);
writeln('ingrese valor del descuento');
readln(descuento1);
descuento:=descuento1/100;
descuento2:=descuento*a;
total:=a-descuento2;
writeln('el valor de su descuento es ',descuento:5:2);
writeln('el valor de su articulo es ', total:5:2);
writeln('gracian por su compra');
End;

Procedure FaldasCortasyMediaPierna;
Var descuento,descuento1,descuento2,total,a: real;
articulo:string;
Begin
writeln('ingrese nombre del articulo');
readln(articulo);
writeln('ingrese valor del articulo');
readln(a);
writeln('ingrese valor del descuento');
readln(descuento1);
descuento:=descuento1/100;
descuento2:=descuento*a;
total:=a-descuento2;
writeln('el valor de su descuento es ',descuento:5:2);
writeln('el valor de su articulo es ', total:5:2);
writeln('gracian por su compra');
END;

Procedure vestidosDeCoctel;
Var descuento,descuento1,descuento2,total,a: real;
articulo:string;
Begin
writeln('ingrese nombre del articulo');
readln(articulo);
writeln('ingrese valor del articulo');
readln(a);
writeln('ingrese valor del descuento');
readln(descuento1);
descuento:=descuento1/100;
descuento2:=descuento*a;
total:=a-descuento2;
writeln('el valor de su descuento es ',descuento:5:2);
writeln('el valor de su articulo es ', total:5:2);
writeln('gracian por su compra');
END;
procedure vestidosDeNoche;
Var descuento,descuento1,descuento2,total,a: real;
articulo:string;
Begin
writeln('ingrese nombre del articulo');
readln(articulo);
writeln('ingrese valor del articulo');
readln(a);
writeln('ingrese valor del descuento');
readln(descuento1);
descuento:=descuento1/100;
descuento2:=descuento*a;
total:=a-descuento2;
writeln('el valor de su descuento es ',descuento:5:2);
writeln('el valor de su articulo es ', total:5:2);
writeln('gracian por su compra');
END;
procedure camisasMangaLargayCorta;
Var descuento,descuento1,descuento2,total,a: real;
articulo:string;
Begin
writeln('ingrese nombre del articulo');
readln(articulo);
writeln('ingrese valor del articulo');
readln(a);
writeln('ingrese valor del descuento');
readln(descuento1);
descuento:=descuento1/100;
descuento2:=descuento*a;
total:=a-descuento2;
writeln('el valor de su descuento es ',descuento:5:2);
writeln('el valor de su articulo es ', total:5:2);
writeln('gracian por su compra');
END;
procedure esmoquins;
Var descuento,descuento1,descuento2,total,a: real;
articulo:string;
Begin
writeln('ingrese nombre del articulo');
readln(articulo);
writeln('ingrese valor del articulo');
readln(a);
writeln('ingrese valor del descuento');
readln(descuento1);
descuento:=descuento1/100;
descuento2:=descuento*a;
total:=a-descuento2;
writeln('el valor de su descuento es ',descuento:5:2);
writeln('el valor de su articulo es ', total:5:2);
writeln('gracian por su compra');
END;
procedure pantalonesDeVestir;
Var descuento,descuento1,descuento2,total,a: real;
articulo:string;
Begin
writeln('ingrese nombre del articulo');
readln(articulo);
writeln('ingrese valor del articulo');
readln(a);
writeln('ingrese valor del descuento');
readln(descuento1);
descuento:=descuento1/100;
descuento2:=descuento*a;
total:=a-descuento2;
writeln('el valor de su descuento es ',descuento:5:2);
writeln('el valor de su articulo es ', total:5:2);
writeln('gracian por su compra');
END;
procedure jeans;
Var descuento,descuento1,descuento2,total,a: real;
articulo:string;
Begin
writeln('ingrese nombre del articulo');
readln(articulo);
writeln('ingrese valor del articulo');
readln(a);
writeln('ingrese valor del descuento');
readln(descuento1);
descuento:=descuento1/100;
descuento2:=descuento*a;
total:=a-descuento2;
writeln('el valor de su descuento es ',descuento2:5:2);
writeln('el valor de su articulo es ', total:5:2);
writeln('gracian por su compra');
END;


Begin
Repeat
Writeln ('1: blusas');
Writeln ('2: chaquetas');
Writeln ('3: pantalones de dama');
Writeln ('4: faldas cortas y de media pierna');
Writeln ('5: vestidos de coctel');
Writeln ('6: vestidos de noche');
writeln ('7: camisas manga larga y corta');
writeln ('8: esmoquins');
writeln ('9: pantalones de vestir');
writeln ('10: jeans');
Readln (proce);
Case proce of
1: blusas;
2: chaquetas;
3: pantalonesdama;
4: faldasCortasyMediaPierna;
5: vestidosDeCoctel;
6: vestidosDeNoche;
7: camisasMangaLargayCorta;
8: esmoquins;
9: pantalonesDeVestir;
10: jeans;
Else
Writeln ('no existe');
END;
Writeln ('¿dedeas utilizar otro programa?');
Writeln ('capturar respuesta');
Readln (respuesta);
Until (respuesta='S') or (respuesta='n');
If (respuesta='n') Then
Writeln ('¡Hasta pronto!');
END.


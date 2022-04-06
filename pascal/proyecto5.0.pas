program Proyecto_Final_Progrmacio;
  uses
     crt;
  type
           regCostazul = record
           pauto : longint;
           Marca : string;
           Vehiculo : string[100];
           Placa:string;
           Color : string;
           Horae : string[50];
           Horas : string;
           entrac : string; {(OV)}

          end;
           personaldeventa = record
           CodVendedor : longint;
           NumCedula : longint;
           NombApelli : string[100];
           NombreC:string;
           NumTelef : string;
           Direccion : string[50];
           monto : real;
           pagoo : string; 
           pagop : string;
           numeroLoc : string; 
          end;
          const
          venda= 5;
          vend=5;

  var
             arch: file of personaldeventa ;
             t, cont : integer;
             tec : char;
             coven : longint;


  var

    ta, conta : integer;
    teca : char;
    covena : longint;
    datosvend: array[1..vend] of  personaldeventa;
    datosvenda: array[1..venda] of  regCostazul;


  procedure incluir2;
  begin
      clrscr;
      writeln('**** Entrada De Datos Del Estacionamiento ****');
      writeln;
      write('     Puesto De Vehiculo     : ');
      readln(datosvenda[conta].pauto);
      write('           Marca            : ');
      readln(datosvenda[conta].marca);
      write('           Placa            : ');
      readln(datosvenda[conta].placa);
      write('           Color            : ');
      readln(datosvenda[conta].color);
      write('     Hora De Entrada        : ');
      readln(datosvenda[conta].horae);
      write('     Hora De Salida         : ');
      readln(datosvenda[conta].horas);
      write('     Entrada Mas Cercana    : ');
      readln(datosvenda[conta].entrac);
      write(' Que Tipo De Vehiculo Tiene : ');
      readln(datosvenda[conta].vehiculo);
   end;

   procedure consultar2(codi : longint);
   var
     encontrado : boolean;
   begin
       encontrado := false;
       for ta := 1 to conta do
       begin
          if datosvenda[ta].pauto = codi then
          begin
            encontrado := true;
            break;
          end;
       end;
       if encontrado = true then
       begin
          clrscr;
          writeln('<<< Los Datos Consultados Son >>>');
          writeln;
          writeln('  Numer De Puesto Del Auto         = ',datosvenda[ta].pauto);
          writeln('  Marca                            = ',datosvenda[ta].marca);
          writeln('  Placa                            = ',datosvenda[ta].placa);
          writeln('  Color                            =',datosvenda[ta].color);
          writeln('  Hora De Entrada                  = ',datosvenda[ta].horae);
          writeln('  Hora De Salida                   = ',datosvenda[ta].horas);
          writeln('  Entrada Mas Cercana              = ',datosvenda[ta].entrac);
          writeln('  Tipo De Vehiculo Que Posee       = ',datosvenda[ta].vehiculo);
          writeln;
          writeln('<<<<<< Pulse [Enter] >>>>>>>');
          readln;
       end
     else
        begin
           clrscr;
           writeln('  Error El Codigo Insertado No Esta Pulse [Enter]');
           readln;
        end;
   end;

  procedure modificar2(codi : longint);
  var
    pul : char;
    modi : boolean;
  begin
     modi := false;
     for t := 1 to conta do
     begin
        if datosvenda[ta].pauto = codi then
        begin
           modi := true;
           break;
        end;
     end;
      if modi = true then
      begin
         repeat
         clrscr;
         writeln('**** Modificacion De Datos ****');
         writeln;
         writeln('  1 = Puesto Del Vehiculo');
         writeln('  2 = Marca');
         writeln('  3 = Placa');
         writeln('  4 = Color');
         writeln('  5 = Hora De Entrada');
         writeln('  6 = Hora De Salida');
         writeln('  7 = Entrada Mas Cercana');
         writeln('  8 = Tipo De Vehiculo');
         writeln('  9 = Finalizar');
         repeat
             pul := readkey;
         until pul in[#49..#57];
      case pul of
     #49 : begin
           write('  Puesto Del Vehiculo    : ');
           readln(datosvenda[ta].pauto);
           end;
     #50 : begin
           write('  Marca         : ');
           readln(datosvenda[ta].marca);
           end;
     #51 : begin
           write('  Placa     : ');
           readln(datosvenda[ta].placa);
           end;
     #52 : begin
           write('     Color                  : ');
           readln(datosvenda[ta].color);
           end;
     #53 : begin
           write('  Hora De Entrada           : ');
           readln(datosvenda[ta].horae);
           end;
     #54 : begin
           write('  Hora De Salida            : ');
           readln(datosvenda[ta].horas);
           end;
     #55 : begin
           write('  Entrada Mas Cercana      : ');
           readln(datosvenda[ta].entrac);
           end;
     #56 : begin
           write('  Tipo De Vehiculo : ');
           readln(datosvenda[ta].vehiculo);
           end;

      end;
    until pul = #57;
    end
   else
      begin
         clrscr;
         writeln('  Error El Puesto No Esta Pulse [Enter]');
         readln;
      end;
  end;

  procedure eliminar2(codi : longint);
  var
    pul : char;
    borra : boolean;
    corre : integer;
  begin
     borra := false;
     for ta := 1 to cont do
     if datosvenda[ta].pauto = codi then
     begin
        borra := true;
        break;
     end;
     if borra = true then
     begin
        clrscr;
        writeln('<<<<<<<< Anular Registro Puesto >>>>>>>>>>');
        writeln;
        writeln('  Numer De Puesto   = ',datosvenda[ta].pauto);
        writeln;
        writeln('Desea Anular Este Registro realizado? [S/N]');
        repeat
           pul := upcase(readkey);
        until pul in['S','N'];
        if pul = 'S' then
        begin
           fillchar(datosvend[ta],sizeof(datosvend[ta]),0);
           corre := 1;
           for corre := t to conta do
           if datosvenda[corre].pauto > 0 then
           begin
              datosvenda[corre] := datosvenda[corre - 1];
           end;
            conta := conta - 1;
        end;
     end
   else
      begin
         clrscr;
         writeln('  Error El Puesto Insertado No Esta Pulse [Enter]');
         readln;
      end;
  end;


 procedure  reporteresultados2;
  var
    mensaje1 : string[100];
  begin
    ta := 1;
  repeat
     clrscr;
     writeln('>>>>>> Datos Del Puesto <<<<<<<<');
     writeln;
      writeln(' NUMERO DE PUESTO,  TIPO DE VEHICULO  ');
      writeln('   ',datosvenda[ta].pauto,'                     ',
      datosvenda[ta].vehiculo,'        ');
      mensaje1 := 'Â¿Se Mostro Lo Que Necesitaba?';
      if t = conta then
      writeln('   Pulse Una tecla  ',mensaje1,' Â¨');
      readkey;
      ta := ta + 1;
   until ta > conta;
  end;
procedure ordenaarray2(por : char);
  var
    temp : regCostazul;
    g, r : integer;
  begin
     if upcase(por) = 'N' then  {Ordenado de menor a mayor codigo}
     begin
        for g := 1 to conta do
          for r := conta downto g + 1 do
          if datosvenda[g].pauto > datosvenda[r].pauto then
          begin
             temp := datosvenda[g];
             datosvenda[g] := datosvenda[r];
             datosvenda[r] := temp;
          end;
       end;

   end;

  procedure menu2;
  var
    tee : char;
    sas : boolean;
  begin
     sas := false;
   repeat
      textcolor(LightBlue);
      textbackground(white);
      clrscr;
      writeln('******* BIENVENIDO A PARQUE COSTA AZUL *********');
      writeln('******* ¿QUE OPCION DESEA SELECCIONAR? *******');
      writeln;
      writeln('   1 = INCLUIR');
      writeln('   2 = CONSULTAR');
      writeln('   3 = MODIFICAR');
      writeln('   4 = ELIMINAR');
      writeln('   5 = REGISTRO DE PUESTO');
      writeln('   6 = ORDENAR');
      writeln('   7 = SALIR');
      writeln;
      writeln('<<<<< Elija Opcion >>>>>');
      repeat
         tee := readkey;
      until tee in[#49..#56];
  case tee of
 #49 : begin
         clrscr;
         conta := conta + 1;
         if conta > venda then
         conta := venda;
         incluir2;
        end;
 #50 : begin
          clrscr;
          write('   Ingrese Numero De Puesto : ');
          readln(covena);
          consultar2(covena);
       end;
 #51 : begin
          clrscr;
          write('   Ingrese Numero De Puesto : ');
          readln(covena);
          modificar2(covena);
       end;
 #52 : begin
          clrscr;
          write('   Ingrese Numero De Puesto : ');
          readln(covena);
          eliminar2(covena);
       end;
 #53 : begin
         clrscr;
         reporteresultados2;
       end;
 #54 : begin
          clrscr;
          writeln(' ¨Desea Ordenar Por [N] numero de puesto ?');
          repeat
             teca := upcase(readkey);
          until teca in['N'];
          ordenaarray2(teca);
       end;
 #55 : sas := true;
   end;
   until sas = true;
  end;

function crear:boolean;
begin
		assign(arch,'Factura.txt');
		{$I-}
		reset(arch);
		{$I+}
                if ioResult <> 0 then begin
		{$I-}
		rewrite(arch);
		{$I+}							//CREA ARCHIVO SOLO SI NO EXISTE Y RETORNA UN BOOLEANDO PARA HACERLE SABER AL PROGRAMA SI LO CREO O NO
		writeln('Creando archivo...');
		writeln();
		writeln('Presione [ENTER]');
		close(arch);
		crear := true;
	end else if ioResult = 0 then begin

		crear:=false;
	end;
end;

  procedure incluir;
  begin
      clrscr;
      writeln('**** Entrada De Datos Del Vendedor ****');
      writeln;
      write('     Codigo Vendedor     : ');
      readln(datosvend[cont].CodVendedor);
      write('     Num. Cedula         : ');
      readln(datosvend[cont].NumCedula);
      write('     Nombre Apellido     : ');
      readln(datosvend[cont].NombApelli);
      write('     Nombre Del Comprador:');
      readln(datosvend[cont].NombreC);
      write('     Num. Telefono       : ');
      readln(datosvend[cont].NumTelef);
      write('     Direccion      : ');
      readln(datosvend[cont].Direccion);
      write('     Monto Del Articulo  : ');
      readln(datosvend[cont].monto);
      write('     Tipo De Pago         : ');
      readln(datosvend[cont].pagoo);
      write('     Descripcion Del Articulo Adquerido    : ');
      readln(datosvend[cont].pagop);
      write('     Numero De Local     :');
      readln(datosvend[cont].numeroLoc);
       
   end;

   procedure consultar(codi : longint);
   var
     encontrado : boolean;
   begin
       encontrado := false;
       for t := 1 to cont do
       begin
          if datosvend[t].CodVendedor = codi then
          begin
            encontrado := true;
            break;
          end;
       end;
       if encontrado = true then
       begin
          clrscr;
          writeln('<<< Los Datos Consultados Son >>>');
          writeln;
          writeln('  Codigo Vendedor           = ',datosvend[t].CodVendedor);
          writeln('  Num. Cedula               = ',datosvend[t].NumCedula);
          writeln('  Nombre Apellido           = ',datosvend[t].NombApelli);
          writeln('  Nombre Del Comprador      =',datosvend[t].NombreC);
          writeln('  Num. Telefonico           = ',datosvend[t].NumTelef);
          writeln('  Direccion Del Articulo Adquirido  = ',datosvend[t].Direccion);
          writeln('  Monto Del Articulo        = ',datosvend[t].monto:0:2);
          writeln('  Tipo De Pago (Online o En Persona)= ',datosvend[t].pagoo);
          writeln('  Descripcion Del Articulo          = ',datosvend[t].pagop);
          writeln('  -numero De local          = ',datosvend[t].numeroLoc);
          writeln;
          writeln('<<<<<< Pulse [Enter] >>>>>>>');
          readln;
       end
     else
        begin
           clrscr;
           writeln('  Error El Codigo Insertado No Esta Pulse [Enter]');
           readln;
        end;
   end;

  procedure modificar(codi : longint);
  var
    pul : char;
    modi : boolean;
  begin
     modi := false;
     for t := 1 to cont do
     begin
        if datosvend[t].CodVendedor = codi then
        begin
           modi := true;
           break;
        end;
     end;
      if modi = true then
      begin
         repeat
         clrscr;
         writeln('**** Modificacion De Datos ****');
         writeln;
         writeln('  1 = Codigo Vendedor');
         writeln('  2 = Num. Cedula');
         writeln('  3 = Nombre Apellido');
         writeln('  4 = Nombre Del Comprador');
         writeln('  5 = Num. Telefonico');
         writeln('  6 = Direccion');
         writeln('  7 = Tipo De Pago (Online o En Persona)');
         writeln('  8 = Descripcion De Articulo Adquirido');
         writeln('  9 = Numero de local');
         writeln('  0 = finaliza');
         repeat
             pul := readkey;
         until pul in[#49..#57];
      case pul of
     #49 : begin
           write('  Codigo Vendedor     : ');
           readln(datosvend[t].CodVendedor);
           end;
     #50 : begin
           write('  Num. Cedula         : ');
           readln(datosvend[t].NumCedula);
           end;
     #51 : begin
           write('  Nombre Apellido     : ');
           readln(datosvend[t].NombApelli);
           end;
     #52 : begin
           write('  Num. Telefonico     : ');
           readln(datosvend[t].NumTelef);
           end;
     #53 : begin
           write('  Direccion           : ');
           readln(datosvend[t].Direccion);
           end;
     #54 : begin
           write('  Monto       : ');
           readln(datosvend[t].monto);
           end;
     #55 : begin
           write('  Especifique Tipo De Pago      : ');
           readln(datosvend[t].pagoo);
           end;
     #56 : begin
           write('  Descripcion Del Articulo: ');
           readln(datosvend[t].pagop);
           end;

      end;
    until pul = #57;
    end
   else
      begin
         clrscr;
         writeln('  Error El Codigo Insertado No Esta Pulse [Enter]');
         readln;
      end;
  end;
   procedure eliminar(codi : longint);
  var
    pul : char;
    borra : boolean;
    corre : integer;
  begin
     borra := false;
     for t := 1 to cont do
     if datosvend[t].CodVendedor = codi then
     begin
        borra := true;
        break;
     end;
     if borra = true then
     begin
        clrscr;
        writeln('<<<<<<<< Anular Registro Vendedor >>>>>>>>>>');
        writeln;
        writeln('  Codigo Vendedor     = ',datosvend[t].CodVendedor);
        writeln;
        writeln('Desea Anular Este Registro realizado? [S/N]');
        repeat
           pul := upcase(readkey);
        until pul in['S','N'];
        if pul = 'S' then
        begin
           fillchar(datosvend[t],sizeof(datosvend[t]),0);
           corre := 1;
           for corre := t to cont do
           if datosvend[corre].CodVendedor > 0 then
           begin
              datosvend[corre] := datosvend[corre - 1];
           end;
            cont := cont - 1;
        end;
     end
   else
      begin
         clrscr;
         writeln('  Error El Codigo Insertado No Esta Pulse [Enter]');
         readln;
      end;
  end;


 procedure  reporteresultados;
  var
    mensaje1 : string[100];
  begin
    t := 1;
  repeat
     clrscr;
     writeln('>>>>>> Datos Del Vendedor <<<<<<<<');
     writeln;
      writeln('  CODIGO DEL VENDEDOR    NOMBRE Y APELLIDO ');
      writeln('   ',datosvend[t].CodVendedor,'                     ',
      datosvend[t].NombApelli,'        ');
      mensaje1 := '¿Se Mostro Lo Que Necesitaba?';
      if t = cont then
      writeln('   Pulse Una tecla  ',mensaje1,'¨');
      readkey;
      t := t + 1;
   until t > cont;
  end;
  procedure ordenaarray(por : char);
  var
    temp : personaldeventa;
    g, r : integer;
  begin
     if upcase(por) = 'N' then  {Ordenado de menor a mayor codigo}
     begin
        for g := 1 to cont do
          for r := cont downto g + 1 do
          if datosvend[g].CodVendedor > datosvend[r].CodVendedor then
          begin
             temp := datosvend[g];
             datosvend[g] := datosvend[r];
             datosvend[r] := temp;
          end;
       end;

   end;

  procedure menu;
  var
    tee : char;
    sas : boolean;
  begin
     sas := false;
   repeat
      textcolor(LightBlue);
      textbackground(white);
      clrscr;
      writeln('******* BIENVENIDO A PARQUE COSTA AZUL *********');
      writeln('******* Â¿QUE OPCION DESEA SELECCIONAR? *******');
      writeln;
      writeln('   1 = INCLUIR');
      writeln('   2 = CONSULTAR');
      writeln('   3 = MODIFICAR');
      writeln('   4 = ELIMINAR');
      writeln('   5 = DATOS DEL VENDEDOR');
      writeln('   6 = ORDENAR');
      writeln('   7 = SALIR');
      writeln;
      writeln('<<<<< Elija Opcion >>>>>');
      repeat
         tee := readkey;
      until tee in[#49..#56];
  case tee of
 #49 : begin
         clrscr;
         cont := cont + 1;
         if cont > 5 then
         cont := 5;
         incluir;
        end;
 #50 : begin
          clrscr;
          write('   Entre Codigo Vendedor : ');
          readln(coven);
          consultar(coven);
       end;
 #51 : begin
          clrscr;
          write('   Entre Codigo Vendedor : ');
          readln(coven);
          modificar(coven);
       end;
 #52 : begin
          clrscr;
          write('   Entre Codigo Vendedor : ');
          readln(coven);
          eliminar(coven);
       end;
 #53 : begin
         clrscr;
         reporteresultados;
       end;
 #54 : begin
          clrscr;
          writeln(' ¿Desea Ordenar Por [N] numero codigo ?');
          repeat
             tec := upcase(readkey);
          until tec in['N'];
          ordenaarray(tec);
       end;
 #55 : sas := true;
   end;
   until sas = true;
  end;

    Procedure menu3;
  var

    sas :integer;
    begin
    repeat
      textcolor(lightblue);
      textbackground(white);
      clrscr;
      writeln('*******BIENVENIDO AL CENTRO COMERCIAL PARQUE COSTA AZUL*******');
      WRITELN;
      writeln('************** INGRESE OPCION QUE DESEE***********************');
      WRITELN;
      writeln('**************************************************************');
      writeln('************    1 =  ESTACIONAMIENTO     *********************');
      writeln('************    2 =      TIENDAS         *********************');
      writeln('************   Exit =     SALIR          *********************');
      writeln('**************************************************************');
      readln(sas);
      case sas of
      1: begin
          menu2;
          readkey;
         end;


      2: begin
          menu;
          readkey;
         end;
         end;
      until(sas=3);
      readkey;
      end;

   begin

       menu3;
       menu2;
       menu;

   end.

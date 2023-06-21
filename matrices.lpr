program matrices;
type
    int=integer;
    matriz = array [0..2,0..2] of int;
var
  i, j, k, valorA, valorB:int;
  a,b,c:matriz;

begin
    writeln('Escoja un numero para generar una matriz aleatoria (de 0 al numero que elija)');
    readln(valorA);
    readln(valorB);
    for i:=0 to 2 do begin
      for j:=0 to 2 do begin   //inicializar vectores
         a[i][j]:=random(valorA);
         b[i][j]:=random(valorB);
         c[i][j]:=0;
         write(a[i][j],' ');     //escribir matriz a
         end;
      writeln('');
      end;
    writeln('');
        for i:=0 to 2 do begin  //escribir matriz b
      for j:=0 to 2 do begin
         write(b[i][j],' ');
         end;
      writeln('');
      end;

      for i:=0 to 2 do begin
        for j:=0 to 2 do begin
           for k:=0 to 2 do begin
              c[i][j]:=c[i][j]+(a[i][k]*b[k][j]);  //calcular matriz resultante
         end;
        end;
      writeln('');
      end;
      for i:=0 to 2 do begin   //resultado
       for j:=0 to 2 do begin
            write(c[i][j],' ');
         end;
      writeln('');
      end;
    readln(i);
end.

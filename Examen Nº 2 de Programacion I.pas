//Desarrolle un programa en Pascal que permita al usuario ingresar una frase y a su
//vez tenga las opciones de convertir esa frase ingresada en números Binarios,
//Hexadecimal, Octal y Romano. Después de convertir la frase a cualquiera de las
//opciones propuestas, el programa debe tener una opción para seguir haciendo
//conversiones. Tener en cuenta que el programa también debe mostrar la opción de salir
//o de convertir otra frase.

program traductorabinhexaoctyrom;

uses crt;
var
l, pb, bint:Longint;
txt:string;
divbin,slc:integer;

// Procedimiento de traductor a Binario //

procedure traductorbinario (y:string);
var 
v,w,x:longint;
z:integer;
begin
    
  for v:= 1 to Length(y) do
  begin
  x:= ord(y[v]);
  z:= 128;
       for w:= 1 to 8 do
       begin
             if x >= z then
             begin
             write('1');
             x:= x - z;
             end
     
              else
              write('0');
              
        z:= z div 2;
        end;
  write(' ');
  end;
  
  

end;

//========================//

// Procedimiento de traductor a Octal //

procedure traductoroctal (y:string);
var 
w:real;
i,u,v,x,conct,conct2,conct3:longint;
z:integer;
begin

for u:= 1 to Length(y) do
begin
x:= ord(y[u]);
w:=1;
  while w >= 1 do
  begin
	  for i:= 1 to 3 do
	  begin
	  v:= x mod 8;
	  x:= x div 8;
	  x:= x * 8;
	  if i = 1 then
	  conct:= v;
	  if i = 2 then
	  conct2:= v;
	  if i = 3 then
	  conct3:= v;
	  w:= x / 8;
	  end;
  
  write(conct3, conct2, conct,' a');
  end;
  
end;


end;

//========================//

BEGIN
	
writeln('Ingrese el texto');
readln(txt);

clrscr();

writeln('¿A que desea traducirlo?');
writeln('1.- Binario');
writeln('2.- Hexadecimal');
writeln('3.- Octal');
writeln('4.- Romano');
readln(slc);

case slc of
1:
	begin
	
		clrscr();
		traductorbinario(txt);
		readln;
	
	end;

2:
	begin
	
		clrscr();
	
	end;

3:
	begin
	
		clrscr();
		
		
	
	end;

4:
	begin
	
		clrscr();
	
	end;

end;




end.



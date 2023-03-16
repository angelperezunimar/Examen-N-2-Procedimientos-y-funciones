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
i,u,v,x,w,conct,conct2,conct3:longint;
z:integer;
begin

	for u:= 1 to Length(y) do
	begin
	
		x:= ord(y[u]);
		
		
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
		traductoroctal(txt);
		readln();
		
		
	
	end;

4:
	begin
	
		clrscr();
	
	end;

end;




end.



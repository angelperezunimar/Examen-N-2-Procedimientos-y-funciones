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
divbin:integer;

BEGIN
	
	writeln('Ingrese el texto');
  readln(txt);
  
  // Transforma a Binario //
    
  for l:= 1 to Length(txt) do
  begin
  bint:= ord(txt[l]);
  divbin:= 128;
       for pb:= 1 to 8 do
       begin
             
             if bint >= divbin then
             begin
             write('1');
             bint:= bint - divbin;
             end
     
              else
              write('0');
              
        divbin:= divbin div 2;
        end;
  write(' ');
  end;
  
  //========================//
  
  readln;
	
END.


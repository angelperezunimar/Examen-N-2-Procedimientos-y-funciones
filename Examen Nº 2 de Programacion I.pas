// Crear un programa que permita imprimir un número ingresado por el usuario en un
// color específico si cumple con alguno de los siguientes parámetros:
// 1. Es divisible entre 13, de serlo deberá imprimirse el número en color marrón.
// 2. Es divisible entre 7, de serlo deberá imprimirse el número en color verde.
// 3. Es divisible entre 5, de serlo deberá imprimirse el número en color rojo.
// 4. Es divisible entre 3, de serlo deberá imprimirse el número en color azul.
// 5. Es divisible entre 2, de serlo deberá imprimirse el número en color amarillo.
// 6. De no ser divisible en base de cualquiera de los casos expuestos deberá imprimir el
// texto en color blanco.

program Enunciado2ColoresBonitosuwu;

uses crt;
var 
tofd: boolean;
num, divisor:longint;

procedure comprobacion (x, y:integer);
begin

if x mod y = 0 then 
	begin 
	textcolor(white);
	write('El numero que usted ingreso ('); 
	textcolor(brown);
	write(x);
	textcolor(white);
	writeln(') es divisible entre ', y);

end;



BEGIN
	
	
END.


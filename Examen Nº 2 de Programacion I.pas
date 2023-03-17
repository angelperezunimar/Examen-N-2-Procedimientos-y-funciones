// Crear un programa que permita imprimir un número ingresado por el usuario en un
// color específico si cumple con alguno de los siguientes parámetros:
// 1. Es divisible entre 13, de serlo deberá imprimirse el número en color marrón.
// 2. Es divisible entre 7, de serlo deberá imprimirse el número en color verde.
// 3. Es divisible entre 5, de serlo deberá imprimirse el número en color rojo.
// 4. Es divisible entre 3, de serlo deberá imprimirse el número en color azul.
// 5. Es divisible entre 2, de serlo deberá imprimirse el número en color amarillo.
// 6. De no ser divisible en base de cualquiera de los casos expuestos deberá imprimir el
// texto en color blanco.

program Enunciado2ColoresBonitosUwU;

uses crt;
var 
	num, divisor:longint;
	color:byte;

procedure estilo (txt:string);
var la,lb:integer;
begin

for la := 1 to length(txt) do write('=');
writeln();

writeln(txt);

for lb := 1 to length(txt) do write('=');

end;


// ===> Se plantea el procedimiento fundamental del programa, este se encarga de verificar <===//
// ===> que el numero sea divisible o no y imprimir adecuadamente el resultado <===//

procedure comprobacion (var x, y:longint;z:byte);

begin

if x mod y = 0 then 
	begin 
		textcolor(white);
		write('El numero que usted ingreso ('); 
		textcolor(z);
		write(x);
		textcolor(white);
		writeln(') es divisible entre ', y);
	end
	
else
	begin 
		textcolor(white);
		write('El numero que usted ingreso ('); 
		write(x);
		writeln(') no es divisible entre ', y);
	end
	
end;

BEGIN

estilo('IMPRESOR CONDICIONAL DE NUMEROS');
writeln();
writeln();
writeln('Se imprimira el numero que usted ha ingresado en un color especifico dependiendo de si es divisible entre 13, 7, 5, 3 y/o 2');
writeln();
write('Ingrese un numero:');
readln(num);

textcolor(white);
	writeln('El numero que usted ingreso es: ', num);

// ===> Se llama al procedimiento y se le asignan los valores adecuados para comprobar si es divisible entre 13 <===//

divisor:= 13;
color:= 6;
comprobacion(num,divisor,color);

// ===> Se llama al procedimiento y se le asignan los valores adecuados para comprobar si es divisible entre 7 <===//

divisor:= 7;
color:= 2;
comprobacion(num,divisor,color);

// ===> Se llama al procedimiento y se le asignan los valores adecuados para comprobar si es divisible entre 5 <===//

divisor:= 5;
color:= 4;
comprobacion(num,divisor,color);

// ===> Se llama al procedimiento y se le asignan los valores adecuados para comprobar si es divisible entre 3 <===//

divisor:= 3;
color:= 3;
comprobacion(num,divisor,color);

// ===> Se llama al procedimiento y se le asignan los valores adecuados para comprobar si es divisible entre 2 <===//

divisor:= 2;
color:= 14;
comprobacion(num,divisor,color);

readln();
	
END.


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
divbin,slc,rslc,dslc, tslc:integer;

// Procedimiento de estilo visual //

	procedure estilo (txt:string);
		var la,lb:integer;
		begin
			for la := 1 to length(txt) do write('=');
			
			writeln();
			writeln(txt);

			for lb := 1 to length(txt) do write('=');
		end;


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

// Procedimiento de traductor a Hexadecimal //

	procedure traductorhexadecimal (y:string);
	var
		t,u,v,v2,v3,x,i,j,conct,conct2,conct3:longint;
		z:integer;
		w:real;
	begin
		for u:= 1 to Length(y) do
			begin
			x:= ord(y[u]);					
			v:= x mod 16;
			t:= x div 16;							
			x:= t;
			t:= x div 16;
			v2:= x mod 16;							
			x:= t;
			t:= x div 16;
			v3:= x mod 16;
				if v3 >= 10 then
					begin
						case v3 of
						10: write('A');
						11: write('B');
						12: write('C');
						13: write('D');
						14: write('E');
						15: write('F');
						end;	
					end
				else write(v3);	
				if v2 >= 10 then
					begin
						case v2 of
						10: write('A');
						11: write('B');
						12: write('C');
						13: write('D');
						14: write('E');
						15: write('F');	
					end;	
				end
				else write(v2);	
				if v >= 10 then
					begin
						case v of
						10: write('A');
						11: write('B');
						12: write('C');
						13: write('D');
						14: write('E');
						15: write('F');
						end;
					end
				else write(v);	
			write(' ');	
			end;
	end;

//========================//

// Procedimiento de traductor a Octal //

	procedure traductoroctal (y:string);
	var 
		t,u,v,x,i,conct,conct2,conct3:longint;
		z:integer;
		w: real;
	begin
		for u:= 1 to Length(y) do
			begin
				t:= 1;
				w:= 1;
				i:= 1;
				x:= ord(y[u]);
					while w >= 1 do
						begin
							while t > 0 do
								begin
								v:= x mod 8;
								t:= x div 8;
								w:= x / 8;
								x:= t;
									if i = 1 then conct:= v;
									if i = 2 then conct2:= v;
									if i = 3 then conct3:= v;
								i:= i + 1;
								end;		
							if i = 4 then write(conct3, conct2, conct, ' ');
							if i = 3 then write(conct2, conct, ' ');	
						end;
			end;
	end;

//========================//


// Procedimiento de traductor a romano //

	procedure traductoraromano (y:string);
	var 
		x,u:integer;
	begin
		for u:= 1 to Length(y) do
			begin
			x:= ord(y[u]);
				if x >= 100 then
					begin
					write('C');
					x:= x - 100;
						if x >= 100 then
							begin
							write('C');
							x:= x - 100;
								if x >= 100 then
								begin
								write('C');
								x:= x - 100;
								end;
							end;					 
					end;			 
			 if x >= 90 then
				begin
				write('XC');
				x:= x - 90;
				end;
			if x >= 50 then
				begin
				write('L');
				x:= x - 50;
				end;
			if x >= 40 then
				begin
				write('XL');
				x:= x - 40;
				end;
			if x >= 10 then
				begin
				write('X');
				x:= x - 10;
					if x >= 10 then
						begin
						write('X');
						x:= x - 10;
						if x >= 10 then
							begin
							write('X');
							x:= x - 10;
							end; 
						end;
				end;
			 if x >= 9 then
				begin
				write('IX');
				x:= x - 9;
				end;
			if x >= 5 then
				begin
				write('V');
				x:= x - 5;
				end;
			if x >= 4 then
				begin
				write('IV');
				x:= x - 4;
				end;
			 if x >= 1 then
				begin
				write('I');
				x:= x - 1;
					if x >= 1 then
						begin
							write('I');
							x:= x - 1;
								if x >= 1 then
									begin
									write('I');
									x:= x - 1;
									end;
						end;
				end;
				write(' ');
			end;

	end;

//========================//

// Inicio del programa //

BEGIN
repeat
begin
clrscr();		
writeln('Bienvenido');
writeln(' ');
writeln('Este es un traductor de Texto a Binario, Hexadecimal, Octal o Romano');
writeln(' ');
writeln('¿Desea usarlo?');
writeln('1.- Si');
writeln('2.- No');
readln(rslc);

	case rslc of 

		1: 
		begin
		clrscr();
		writeln('Ingrese el texto que desea traducir');
		readln(txt);

		repeat 
		clrscr();
		writeln('¿A que desea traducirlo?');
		writeln('1.- Binario');
		writeln('2.- Hexadecimal');
		writeln('3.- Octal');
		writeln('4.- Romano');
		readln(slc);

		// Case para la seleccion del tipo de traduccion //

		case slc of

		// Traduccion a binario //

		1:
			begin	
				clrscr();
				writeln('Traduccion en proceso... Presione [Enter] para visualizarla');
				writeln(' ');
				writeln('Presione [Enter] para visualizarla');
				readln();
				traductorbinario(txt);
				readln();
				clrscr();
				writeln('¿Desea traducir el texto a una codificacion distinta?');
				writeln(' ');
				writeln('1.- Si');
				writeln('2.- No');
				readln(dslc);
					if  dslc = 2 then 
						begin
						clrscr();
						writeln('¿Desea convertir un texto distinto?');
						writeln(' ');
						writeln('1.- Si');
						writeln('2.- No');
						readln(tslc);						
							if tslc = 2 then
								begin
								clrscr();
								writeln('Tenga feliz dia');
								rslc := 2;
								end;	
						end;
			end;
			
			//========================//
			
			// Traduccion a Hexadecimal //

		2:
			begin
				clrscr();
				writeln('Traduccion en proceso... Presione [Enter] para visualizarla');
				readln();
				traductorhexadecimal(txt);
				readln;
				clrscr();
				writeln('¿Desea traducir el texto a una codificacion distinta?');
				writeln(' ');
				writeln('1.- Si');
				writeln('2.- No');
				readln(dslc);
					if  dslc = 2 then 
						begin
						clrscr();
						writeln('¿Desea convertir un texto distinto?');
						writeln(' ');
						writeln('1.- Si');
						writeln('2.- No');
						readln(tslc);
							if tslc = 2 then
							begin
							clrscr();
							writeln('Tenga feliz dia');
							rslc := 2;
							end;
						end;			
			end;
			
			//========================//
			
			// Traduccion a Octal //

		3:
			begin			
				clrscr();
				writeln('Traduccion en proceso... Presione [Enter] para visualizarla');
				readln();
				traductoroctal(txt);
				readln();	
				clrscr();
				writeln('¿Desea traducir el texto a una codificacion distinta?');
				writeln(' ');
				writeln('1.- Si');
				writeln('2.- No');
				readln(dslc);
					if  dslc = 2 then 
						begin
						clrscr();
						writeln('¿Desea convertir un texto distinto?');
						writeln(' ');
						writeln('1.- Si');
						writeln('2.- No');
						readln(tslc);					
							if tslc = 2 then
								begin
								clrscr();
								writeln('Tenga feliz dia');
								rslc := 2;
								end;						
						end;			
			end;
			
			//========================//
			
			// Traduccion a Romano //

		4:
			begin			
				clrscr();
				writeln('Traduccion en proceso... Presione [Enter] para visualizarla');
				readln();
				traductoraromano(txt);
				readln();
				clrscr();
				writeln('¿Desea traducir el texto a una codificacion distinta?');
				writeln(' ');
				writeln('1.- Si');
				writeln('2.- No');
				readln(dslc);
					if  dslc = 2 then 
						begin
						clrscr();
						writeln('¿Desea convertir un texto distinto?');
						writeln(' ');
						writeln('1.- Si');
						writeln('2.- No');
						readln(tslc);
							if tslc = 2 then
								begin
								clrscr();
								writeln('Tenga feliz dia');
								rslc := 2;
								end;						
						end;		
			end;
			
			//========================//
			
		end;
		
		until dslc = 2;
		end;
	2: 	begin
		writeln('Tenga feliz dia');
		rslc:= 2;
		end;
	end;

end;
until rslc = 2;

end.

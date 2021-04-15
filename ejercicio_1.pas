program parte_1;

uses crt;

type

	Reporte = record

		id: integer;
		titulo: string;
		categoria: string;
		contenido: string;
		fecha: string;

	end;

var
	R_id: array [1..50] of Reporte;
	retico: Reporte;
	n,i,l,y,dati,total: integer;
	archivo: text;
	menu: integer;
	salir: boolean;
	repetido: boolean;




begin



	Repeat
		Clrscr;
		n:=1;
		writeln('Bienvenido a registro');
		writeln('');
		writeln('En estos momentos hay registrados: ',total);
		writeln('');
		writeln('Desea ingresar un nuevo registro presione 1');
		writeln('');
		writeln('Quieres imprimir resultados en carpetas presiona 2');
		writeln('');
		writeln('Presione otro numero para salir');
		writeln('');
		readln(menu);
		case menu of

		1:
			begin
				Clrscr;
				writeln('Dame los datos del registro');
				writeln('id');

				Repeat 

					if R_id[n].id = 0 then
					begin 
						repetido:= false;
						readln(R_id[n].id);

						for i:= 1 to 50  do 
						begin 
							for l:=1 to 50 do 
							begin 
								if i <> l then 
								begin 

									if R_id[i].id <> 0  then
									begin
										if R_id[l].id <> 0 then
										begin 

										if repetido = true then
										begin 
											repetido := true;
										end else
										begin 
											repetido := false;
										end;

										if R_id[i].id = R_id[l].id then 
										begin 

											repetido:= true;
										end;

										end;
									end;
								end;
							end;
						end;
						if repetido = true then 
						begin 
							Clrscr;
							writeln('El Dato ya existe');
							writeln('Vuelva a ingresarlo de nuevo');
							R_id[n].id:= 0;
						end else
						begin 
							with R_id[n] do
						    begin
							    writeln('Dame el titulo');
							    readln(titulo);
							    writeln('Dame categoria');
							    readln(categoria);
							    writeln('Dame contenido');
							    readln(contenido);
							    writeln('Dame fecha');
							    readln(fecha);
							    
							end;

							total:= total +1;
						end;
						n:= 49;
					end;
					n:= n + 1;
				until(n = 50);

				readln();
				
			end;

		2:
			begin
				Clrscr;
				writeln('Has escogido imprimir');

				writeln('Dame la id que registraste');
				readln(dati);

				for i:= 1 to 50 do 
				begin 

					if R_id[i].id = dati then
					begin

						assign( archivo, 'Rtitulo/titulo.TXT' );  
    					rewrite( archivo ); 
    					writeln('');
    					write(R_id[i].id);
    					write('El registro es: ');
    					write( archivo, R_id[1].titulo);
    					close( archivo );

    					assign( archivo, 'Rfecha/fecha.TXT' );  
    					rewrite( archivo ); 
    					writeln('');
    					write(R_id[i].id);
    					write('El registro es: ');
    					write( archivo, R_id[1].fecha);
    					close( archivo );

    					assign( archivo, 'Rcontenido/contenido.TXT' );  
    					rewrite( archivo ); 
    					writeln('');
    					write(R_id[i].id);
    					write('El registro es: ');
    					write( archivo, R_id[1].contenido);
    					close( archivo );

    					assign( archivo, 'Rcategoria/categoria.TXT' );  
    					rewrite( archivo ); 
    					writeln('');
    					write(R_id[i].id);
    					write('El registro es: ');
    					write( archivo, R_id[1].categoria);
    					close( archivo );
					 end;

				end;

			               
			end;

		else

			Clrscr;
			writeln ('Opcion no valida');
			salir:= true;

		end;

	until(salir);

	readln();











	end.


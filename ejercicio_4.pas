program ordenar; 

var

archivo: text;

begin

	assign( archivo, 'Archivo.TXT' );  
    rewrite( archivo );
    write( archivo, 'hola mundo');
    reset(archivo);
    close( archivo );

    readln();

end.
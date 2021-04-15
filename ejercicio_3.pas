program fibonichi;

uses crt;

var 

n,i,m,l,contador: integer;
begin 
	Clrscr;
	writeln('');
	writeln('Dame el numero hasta que dure fibonichi');
	writeln('');
	readln(n);
	writeln('');
	m:= 1;
	for i:= 1 to n do 
	begin 

		m:= m + l; 
		contador:= contador + 1;
		l:= m + l;
		contador:= contador + 1;

		if contador <= n then
		begin 
		writeln(m);
		writeln(l);

		end; 

		
	end;
	readln();
end.
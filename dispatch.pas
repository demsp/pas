var x,y:integer;
function f_sub(a:integer):integer;
begin
  f_sub:= a;  
end;
function f(a,b:integer):integer;
begin
  writeln(a);
  writeln(f_sub(b));
end;
begin
 writeln('pervoe chislo:');
 readln(x);
 writeln('vtoroe chislo:');
 readln(y);
 f(x,y);
end.

{var x,y:integer;
function f(a,b:integer):integer;
begin
  f:= a+b;
end;
begin
 writeln('pervoe chislo:');
 readln(x);
 writeln('vtoroe chislo:');
 readln(y);
 writeln('summa= ',f(x,y));
end.
}

var c:char; 
s:string; 
begin 
s:='abcdef'; 
c:=s[2]; 
s[3]:=c; 
writeln(c);
writeln(s);
end.

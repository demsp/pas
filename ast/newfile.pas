
var
    f: file of char;
    c: char;
    i, n: byte;
 
begin
    assign (f, '/home/demsp/file.txt');
    rewrite (f);
 
    write ('Количество символов: 5');
    n:=5;
    //readln (n);
 
    for i:=1 to n do begin
       // write ('Введите символ: ');
       c:=char(i+33);
       // readln (c);
        write (f, c);
    end;
 
    close (f);
 
end.
{* 
var
   filetext: text;
   a,b,c:string;
begin
assign(filetext,'/home/demsp/file1.txt');
reset(filetext);
readln(filetext,a);
readln(filetext,b);
readln(filetext,c);
close(filetext);
writeln(a);
writeln(c);
end.
*}

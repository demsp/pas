Program bf5_stack;

LABEL prev,next;
var
a: array[1..10] of integer;
size: integer;
data_arr:array[1..10] of integer; // массив данных
str_arr: string; // команды 
i,j,k: integer;
acc:integer;
i_stor: integer; 
bracket_flag:integer;
digit_flag:integer;
sight:char;

//Stack
procedure push(c: integer);
begin
a[size+1] := c; 
size := size + 1;
end;

procedure pop;
begin
size := size - 1;
end;
{---------------------------------------------------}
begin
j:=1; // нумерация элементов массива начинается с единицы
i:=1;
size := 0; {Изначально стек пуст}

//readln(str_arr); //считываем строку
// str_arr:='+++[>+++[>+<-]<-]'; // 3*3=9
str_arr:='[+ 4[- 2[+ 3]]]'; 

prev:
if i>length(str_arr) then goto next;

if (str_arr[i]='+') then sight:='+';
if (str_arr[i]='-') then sight:='-';

if(str_arr[i]='1')or(str_arr[i]='2')or(str_arr[i]='3') or(str_arr[i]='4') then begin 
if (digit_flag=1) then begin 
if (sight='+') then acc:=acc+(integer(str_arr[i])-integer('0'));
if (sight='-') then acc:=acc-(integer(str_arr[i])-integer('0'));
//acc:=acc+(integer(str_arr[i])-integer('0'));
str_arr[i]:='q';
digit_flag:=0;
end;
end;

// скобки
if (str_arr[i]='[') then begin 
if(bracket_flag=0) then Push(i);
if(bracket_flag=1) then 
begin
//bracket_flag:=0;
str_arr[i]:=' ';
end;
end;

if (str_arr[i]=']') then
begin
str_arr[i]:=' ';
digit_flag:=1;
bracket_flag:=1;
Pop();

i := a[size+1];

goto prev;

end;
i:=i+1;
goto prev;
next:
for k:=1 to 10 do begin 
write(data_arr[k]);
write(' ');
end;
writeln(str_arr);
writeln(acc);
end.

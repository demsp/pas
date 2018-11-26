LABEL prev,next;
var
  com_mem:string;
  com_pointer:integer;
  string_arr:array[1..10] of string; //сигнатура функции
  reg_arr:array[1..10] of integer; // числовое представление функции
  str:string;
  i,j:integer;
  inn: integer;
   //str_index:integer;
    //str_index_stor:integer;
  put_flag: boolean;
  //first_oper:char;
  //second_oper:char;
begin
str:='          ';
i:=1;j:=1;  
com_pointer:=1;
com_mem:='_b 2. _c 3.';
//com_mem:='_b 2. %b: %b+%c.';

prev:
 if i>length(com_mem) then goto next; 
 if (com_mem[i]='a') or
    (com_mem[i]='b') or
    (com_mem[i]='c') or
    (com_mem[i]='d') or
    (com_mem[i]='e') or
    (com_mem[i]='f') then com_pointer:=integer(com_mem[i])-96;
 //li	a, digit	
 if(com_mem[i]='_') then put_flag:=true; 
 if(put_flag=true) then begin 
  if(com_mem[i]='1')or(com_mem[i]='2')or(com_mem[i]='3')
  or(com_mem[i]='4')or(com_mem[i]='5')or(com_mem[i]='6')
  or(com_mem[i]='7')or(com_mem[i]='8')or(com_mem[i]='9') 
  then reg_arr[com_pointer]:=integer(com_mem[i])-integer('0');
 end;
 if(put_flag=true)and(com_mem[i]='.') then put_flag:=false; 
 i:=i+1;
 goto prev;
 next:
{Выводим массив строк}
for inn := 1 to length(com_mem) do
begin
write(com_mem[inn]);
end;
writeln();
writeln(reg_arr);
end.     

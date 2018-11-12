 LABEL prev,next;
var
 a : array[1..10] of integer;
 size : integer;
 data_arr:array[1..10] of integer;    // массив данных
 str_arr: string;                     // команды  
 i,j: integer;                      // индексы строки и массива
 bracket_flag:integer;
 first_oper:integer;
 sight:char;
 acc:integer;
 i_first_stor:integer;
//Stack
procedure push(c : integer);
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
 j:=1;   // нумерация элементов массива начинается с единицы
 i:=1;
 size := 0; {Изначально стек пуст}
 //readln(str_arr);       //считываем строку
str_arr:='[+ 4 3]'; 
str_arr:='[+2[+43]]'; 
 
 prev:
 if i>length(str_arr) then goto next; 
 if(str_arr[i]='1')or(str_arr[i]='2')or(str_arr[i]='3')or(str_arr[i]='4')
 or(str_arr[i]='5')or(str_arr[i]='6')or(str_arr[i]='7')or(str_arr[i]='8') then begin
 if (first_oper=0) then begin 
 acc:=integer(str_arr[i])-integer('0');
 first_oper:=1;
 i_first_stor:=i;
 end;
 if (first_oper=1)and(i<>i_first_stor) then begin
  acc:=acc+(integer(str_arr[i])-integer('0'));
  str_arr[i]:=char(acc+integer('0'));
  first_oper:=0;
  str_arr[i_first_stor]:='_';
  end;
//...
end;
    if (str_arr[i]='+') then sight:='+';
    if (str_arr[i]='-') then sight:='-';
  // скобки
    if (str_arr[i]='[') then begin 
    acc:=0; first_oper:=0;
    if(bracket_flag=0) then Push(i);
    if(bracket_flag=1) then str_arr[i]:='#';
    end;
          
    if (str_arr[i]=']') then
      begin
      str_arr[i]:='#';
      bracket_flag:=1;
      Pop();
              i := a[size+1];
        goto prev;
        end;
 i:=i+1;
 goto prev;
 next:

writeln(str_arr);
end.

Program bf5_stack;
 
 LABEL prev,next;
var
 a : array[1..10] of integer;
 size : integer;
 data_arr:array[1..10] of integer;    // массив данных
 str_arr: string;                     // команды  
 i,j,k: integer;                      // индексы строки и массива
 i_stor: integer; 
 bracket_flag:integer;
 first_oper:integer;
 digit_stor:integer;
 sight:char;

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

//str_arr:='[[[+]]]'; 
str_arr:='[+ 4 3]'; 
 
 prev:
 if i>length(str_arr) then goto next; 
 if(str_arr[i]='1')or(str_arr[i]='2')or(str_arr[i]='3')or(str_arr[i]='4') then begin 
 if (bracket_flag=1)and(first_oper=0) then begin 
 first_oper:=1;
 i:=i+1;
 goto prev;
 end;
 if (bracket_flag=1)and(first_oper=1) then begin
  digit_stor:=integer(str_arr[i])-integer('0');
  str_arr[i]:='s';
  first_oper:=0;
  end;
//...
end;
    if (str_arr[i]='+') then sight:='+';
    if (str_arr[i]='-') then sight:='-';
   // if (str_arr[i]='-') then data_arr[j]:= data_arr[j]-1;
   // if (str_arr[i]='>') then j:=j+1;
   // if (str_arr[i]='<') then j:=j-1;
   // if (str_arr[i]='.') then write(chr(data_arr[j]));
   
   // скобки
    if (str_arr[i]='[') then begin 
    if(bracket_flag=0) then Push(i);
    if(bracket_flag=1) then str_arr[i]:=' ';
    end;
          
    if (str_arr[i]=']') then
      begin
      str_arr[i]:=' ';
      bracket_flag:=1;
      Pop();
      //if (data_arr[j]>0) then 
      // begin
        i := a[size+1];
        goto prev;
      // end;
      end;
 i:=i+1;
 goto prev;
 next:
for k:=1 to 10 do begin 
write(data_arr[k]);
write(' ');
end;
writeln(str_arr);
end.

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
 acc:integer;

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
str_arr:='[- 0 6]'; 
 
 prev:
 if i>length(str_arr) then goto next; 
 
 if(first_oper=0)and 
 ((str_arr[i]='0') or
 (str_arr[i]='1')or
 (str_arr[i]='2')or
 (str_arr[i]='3')or
 (str_arr[i]='4')or
 (str_arr[i]='5')or
 (str_arr[i]='6')) then begin
 //if(str_arr[i]='0')or(str_arr[i]='1')or(str_arr[i]='2')or(str_arr[i]='3')or(str_arr[i]='4') then begin 
 if (bracket_flag=1) then begin
 str_arr[i]:=char(acc+integer('0'));
 //first_oper:=0;
     end;
 acc:=integer(str_arr[i])-integer('0');
 i_stor:=i;
 first_oper:=1;

 end; //end of if    
 if(first_oper=1)and(i<>i_stor)and
 ((str_arr[i]='0')or
 (str_arr[i]='1')or
 (str_arr[i]='2')or
 (str_arr[i]='3')or
 (str_arr[i]='4')or
 (str_arr[i]='5')or
 (str_arr[i]='6')) then begin
 first_oper:=0;
 ///
 if (sight='+') then begin
 //if (acc<>0)and(sight='+')and(i<>i_stor) then begin
 acc:=acc+(integer(str_arr[i])-integer('0'));
 str_arr[i]:='#';
 //first_oper:=0;
 end;
 if (sight='-') then begin
 acc:=acc-(integer(str_arr[i])-integer('0'));
 str_arr[i]:='#';
 end;
end;
    if (str_arr[i]='+') then begin
    sight:='+';
    if (bracket_flag=1) then str_arr[i]:='%';
    end;
    if (str_arr[i]='-') then begin 
    sight:='-';
    if (bracket_flag=1) then str_arr[i]:='%';
    end;
      
   // скобки
    if (str_arr[i]='[') then begin 
    if(bracket_flag=0) then Push(i);
    if(bracket_flag=1) then str_arr[i]:='@';
    end;
          
    if (str_arr[i]=']') then
      begin
      str_arr[i]:='@';
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

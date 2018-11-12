LABEL prev,next;
var
 a : array[1..10] of integer;
 size : integer;
 data_arr:array[1..10] of integer;    
 str_arr: string;                     
 i,k: integer;
 //j:integer;
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
 //j:=1;  
 i:=1;
 size := 0; {Изначально стек пуст}
 //readln(str_arr);       //считываем строку
//str_arr:='[-9[+43]]'; 
str_arr:='[*3[-7[*33]]]'; 
 prev:
 if i>length(str_arr) then goto next; 
 // first IF
 if(str_arr[i]='1')or(str_arr[i]='2')or(str_arr[i]='3')
 or(str_arr[i]='4')or(str_arr[i]='5')or(str_arr[i]='6')
 or(str_arr[i]='7')or(str_arr[i]='8')or(str_arr[i]='9')or(str_arr[i]='~') then begin
 if (first_oper=0) then begin 
 acc:=integer(str_arr[i])-integer('0');
 first_oper:=1;
 i_first_stor:=i;
 end;
 if (first_oper=1)and(i<>i_first_stor) then begin
   if (str_arr[i]='~') then begin
   if(sight='+') then acc:=acc+data_arr[i];
   if(sight='-') then acc:=acc-data_arr[i];
   if(sight='*') then acc:=acc*data_arr[i];
   end;
   if (str_arr[i]<>'~') then begin  
   if(sight='+') then acc:=acc+(integer(str_arr[i])-integer('0'));
   if(sight='-') then acc:=acc-(integer(str_arr[i])-integer('0'));
   if(sight='*') then acc:=acc*(integer(str_arr[i])-integer('0'));
   str_arr[i]:='~';
   end;
 data_arr[i]:=acc;   
 str_arr[i_first_stor]:='_';
 first_oper:=0;
 end;
//first IF end
end;
    //знаки
    if (str_arr[i]='+') then begin 
    if(bracket_flag=1) then str_arr[i]:='z';
    sight:='+';
    end;
    if (str_arr[i]='-') then begin 
    if(bracket_flag=1) then str_arr[i]:='z';
    sight:='-';
    end;
    if (str_arr[i]='*') then begin 
    if(bracket_flag=1) then str_arr[i]:='z';
    sight:='*';
    end;
  // скобки
  if (str_arr[i]='[') then begin 
     acc:=0; first_oper:=0;
     if(bracket_flag=0) then Push(i);
     if(bracket_flag=1) then str_arr[i]:='#';
     end;
  if (str_arr[i]=']') then  begin
      str_arr[i]:='#';
      bracket_flag:=1;
      Pop();
        i := a[size+1];
        goto prev;
      end;
 i:=i+1;
 goto prev;
 next:
// output 
writeln(str_arr);
writeln(acc);
for k:=1 to 10 do begin 
write(data_arr[k]);
write(' ');
end;
end.

LABEL prev,next;
var
 str_arr:array[1..3] of string; //сигнатура функции
 str_arr1:array[1..3] of string; // числовое представление функции
 str:string;
 i,j,k,m:integer;
 inn: integer;
 str_index:integer;
 com_mem:string;
 exclamation:boolean;
 dot:boolean;
 first_oper:char;
 second_oper:char;
 first_flag:boolean;
 
 i_first_stor:integer;
 //func_list:array[1..3] of char;
 func_name:char;
begin
str:='          ';
i:=1;j:=1;k:=1;m:=1;  
str_index:=1;
exclamation:=false;
//com_mem:='[!x[+aa]]';
//com_mem:='[!a[+$$]][!b[*$$]][!c[*2$]][.[a5]]';
//com_mem:='[!a[+$$]][!b[*$$]][.a3][.a6][.b8]';
com_mem:='[!a[+$#]][!b[*2$]][.a34][.b6]';

prev:
 if i>length(com_mem) then goto next; 
 ///    ///
 if(com_mem[i]='!')then begin
 exclamation:=true;
 end;
 if(com_mem[i]='.')then begin
 dot:=true;
 end;
 ///    ///    
if (exclamation=true)and(com_mem[i]='[') then begin
while(com_mem[i]<>']')do begin
 if(com_mem[i]<>'[') then  str[k]:=com_mem[i];
 i:=i+1;
 k:=k+1;
end;
exclamation:=false;
str_arr[m] := str;
str:='          ';
m:=m+1;
k:=1;
end;
///    ///
if(dot=true)and(com_mem[i]<>']') then begin
 //writeln('dot= ', dot);
if(com_mem[i]='a')or
(com_mem[i]='b')or
(com_mem[i]='c') then str_index:=integer(com_mem[i])-96;
str:=str_arr[str_index];
  
if(com_mem[i]='1')or(com_mem[i]='2')or(com_mem[i]='3')or(com_mem[i]='4')or 
(com_mem[i]='5')or(com_mem[i]='6')or(com_mem[i]='7')or
(com_mem[i]='8')or(com_mem[i]='9')then begin
if (first_flag=false) then begin 
first_oper:=com_mem[i];
first_flag:=true;
i_first_stor:=i;
end;
if (first_flag=true)and(i<>i_first_stor) then begin 
second_oper:=com_mem[i];
first_flag:=false;
end;
//запихиваем строку обратно в str_arr
end;
end;
 if(dot=true)and(com_mem[i]=']') then begin 
  dot:=false;
 // writeln('dot= ', dot);
  for j:=1 to length(str) do begin
  if (str[j]='$') then str[j]:=first_oper;
  if (str[j]='#') then str[j]:=second_oper;
  str_arr1[str_index]:=str;
  writeln('str_arr1=',str_arr1[str_index]);
  end;
 end; 
//writeln('#dot=',dot); 
//writeln('#str=',str); 
//writeln('#first_digit=',first_digit);  
///    ///
i:=i+1;
 goto prev;
 next:

{Выводим массив строк}
for inn := 1 to length(com_mem) do
begin
write(com_mem[inn]);
end;
writeln;
//writeln(str);
writeln();
//write(str_arr[1]);
writeln();
//write(str_arr[2]);
writeln();
//write(str_arr[3]);

end.     

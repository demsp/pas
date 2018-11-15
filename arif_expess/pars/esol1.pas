LABEL prev,next;
var
  str_arr:array[1..3] of string; //сигнатура функции
  data_arr:array[1..10] of integer; // числовое представление функции
  str:string;
  i,j:integer;
  inn: integer;
    str_index:integer;
    str_index_stor:integer;
  com_mem:string;
  exclamation:boolean;
  tilda:boolean;
  percent:boolean;
  first_oper:char;
  second_oper:char;
  first_flag:boolean;
  acc:integer;
  i_first_stor:integer;
  j_first_stor:integer;
  sight:char;
begin
str:='          ';
i:=1;j:=1;  
str_index:=1;
exclamation:=false;
//com_mem:='[!x[+aa]]';
//com_mem:='[!a[+$$]][!b[*$$]][!c[*2$]][.[a5]]';
//com_mem:='[!a[+$$]][!b[*$$]][.a3][.a6][.b8]';

//com_mem:='[!a[-$#]][!b[*3$]][.a52][.b5]';
com_mem:='!a:$-#.!b:4*$.!c:$+#.~a 8 2.~b 1.%c: a^ b^.';
//com_mem:='!a:$+#.!b:3*$.!c:$+#.~a 6 3.~b 2.~c 5 4.';

prev:
 if i>length(com_mem) then goto next; 
 // начало цикла обработки строки
 // обработка букв 
 if (com_mem[i]='a') or
    (com_mem[i]='b') or
    (com_mem[i]='c') or
    (com_mem[i]='d') or
    (com_mem[i]='e') or
    (com_mem[i]='f') then str_index:=integer(com_mem[i])-96;
 ///\\\    ///\\\
 if(com_mem[i]='!')then exclamation:=true;
 if(com_mem[i]='~')then  tilda:=true;
 if(com_mem[i]='%')then  percent:=true;
 if(com_mem[i]='#')then  writeln(data_arr[str_index]);
 if(com_mem[i]='^')then  begin
 acc:=data_arr[str_index];
 //writeln(acc);
 end;
 
if (exclamation=true)and(com_mem[i]=':') then begin
while(com_mem[i]<>'.')do begin
if (com_mem[i]<>':') then str[j]:=com_mem[i];
 i:=i+1;
 j:=j+1;
end;
exclamation:=false;
str_arr[str_index] := str;
str:='          ';
j:=1;
end;
// если процент
if(percent=true)and(com_mem[i]<>'.') then begin
   if (com_mem[i]=':') then begin
   str:=str_arr[str_index];
   str_index_stor:=str_index;
   end;
 if(com_mem[i]='^') then begin
    if (first_flag=false) then begin 
    first_oper:=char(acc+integer('0'));
    first_flag:=true;
    i_first_stor:=i;
    end;
    if (first_flag=true)and(i<>i_first_stor) then begin 
    second_oper:=char(acc+integer('0'));
    first_flag:=false;
    end;
   end;
 end;   
//запихиваем строку обратно в str_arr
 if(percent=true)and(com_mem[i]='.') then begin 
   percent:=false;
  // writeln('dot= ', dot);
  for j:=1 to length(str) do begin
  if (str[j]='$') then str[j]:=first_oper;
  if (str[j]='#') then str[j]:=second_oper;
    end;
   //str_arr1[str_index]:=str;
  for j:=1 to length(str) do begin
  ///\\\///\\\///\\\
 //знаки
    if (str[j]='+') or
       (str[j]='-') or
       (str[j]='*') or
       (str[j]='/') then sight:=str[j];
 // числа    
 if(str[j]='1')or(str[j]='2')or(str[j]='3')
 or(str[j]='4')or(str[j]='5')or(str[j]='6')
 or(str[j]='7')or(str[j]='8')or(str[j]='9')or(str[j]='~') then begin
 if (first_flag=false) then begin 
 acc:=integer(str[j])-integer('0');
 first_flag:=true;
 j_first_stor:=j;
 end;
 if (first_flag=true)and(j<>j_first_stor) then begin
   if (str[j]='~') then begin
   if(sight='+') then acc:=acc+data_arr[j];
   if(sight='-') then acc:=acc-data_arr[j];
   if(sight='*') then acc:=acc*data_arr[j];
   end;
   if (str[j]<>'~') then begin  
   if(sight='+') then acc:=acc+(integer(str[j])-integer('0'));
   if(sight='-') then acc:=acc-(integer(str[j])-integer('0'));
   if(sight='*') then acc:=acc*(integer(str[j])-integer('0'));
   str[j]:='~';
   end;
 data_arr[str_index_stor]:=acc;   
 str[j_first_stor]:='_';
 first_flag:=false;
 end;
//first IF end
end;
        
   //writeln('data_arr=',data_arr);
  ///\\\///\\\///\\\
  end;
  //writeln('data_arr=',data_arr);
  //\\//\\//\\//\\//\\//\\
  end; 

// если тильда
if(tilda=true)and(com_mem[i]<>'.') then begin
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
 end;
end;
//запихиваем строку обратно в str_arr
 if(tilda=true)and(com_mem[i]='.') then begin 
   tilda:=false;
 // writeln('dot= ', dot);
  for j:=1 to length(str) do begin
  if (str[j]='$') then str[j]:=first_oper;
  if (str[j]='#') then str[j]:=second_oper;
    end;
   //str_arr1[str_index]:=str;
  for j:=1 to length(str) do begin
  ///\\\///\\\///\\\
 //знаки
    if (str[j]='+') or
       (str[j]='-') or
       (str[j]='*') or
       (str[j]='/') then sight:=str[j];
 // числа    
 if(str[j]='1')or(str[j]='2')or(str[j]='3')
 or(str[j]='4')or(str[j]='5')or(str[j]='6')
 or(str[j]='7')or(str[j]='8')or(str[j]='9')or(str[j]='~') then begin
 if (first_flag=false) then begin 
 acc:=integer(str[j])-integer('0');
 first_flag:=true;
 j_first_stor:=j;
 end;
 if (first_flag=true)and(j<>j_first_stor) then begin
   if (str[j]='~') then begin
   if(sight='+') then acc:=acc+data_arr[j];
   if(sight='-') then acc:=acc-data_arr[j];
   if(sight='*') then acc:=acc*data_arr[j];
   end;
   if (str[j]<>'~') then begin  
   if(sight='+') then acc:=acc+(integer(str[j])-integer('0'));
   if(sight='-') then acc:=acc-(integer(str[j])-integer('0'));
   if(sight='*') then acc:=acc*(integer(str[j])-integer('0'));
   str[j]:='~';
   end;
 data_arr[str_index]:=acc;   
 str[j_first_stor]:='_';
 first_flag:=false;
 end;
//first IF end
end;
        
   //writeln('data_arr=',data_arr);
  ///\\\///\\\///\\\
  end;
  //writeln('data_arr=',data_arr);
  //\\//\\//\\//\\//\\//\\
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
writeln();
writeln(data_arr);
//writeln(str);
//write(str_arr[1]);
//write(str_arr[2]);
//write(str_arr[3]);
end.     

LABEL _str_begining,_str_end;
var
 //массив строк
  // каждая строка - это сигнатура функции
  str_arr:array[1..3] of string; 
  data_arr:array[1..10] of integer; // числовое представление функции
  str:string;
  i,j:integer;
  inn: integer;
  str_index:integer;
  // строка-программа
  com_mem:string;
  exclamation:boolean;
  tilda:boolean;
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
// текст программы
com_mem:='!a:$+#;!b:3*$;!c:$-#;~a 1 2;~b 5;~c 9 1;';

_str_begining:
 if i>length(com_mem) then goto _str_end; 
 // начало цикла обработки строки
 // обработка букв 
 if (com_mem[i]='a') or
    (com_mem[i]='b') or
    (com_mem[i]='c') or
    (com_mem[i]='d') or
    (com_mem[i]='e') or
    (com_mem[i]='f') 
    // кладём в переменную str_index номер буквы в ascii-таблице 
    then str_index:=integer(com_mem[i])-96;
 //######################
 if(com_mem[i]='!')then exclamation:=true;
 if(com_mem[i]='~')then  tilda:=true; 
   if (exclamation=true)and(com_mem[i]=':') then begin
   while(com_mem[i]<>';')do begin
   str[j]:=com_mem[i];
   i:=i+1;
   j:=j+1;
   end;
exclamation:=false;
str_arr[str_index] := str;
str:='          ';
j:=1;
end;
//

// если тильда
if(tilda=true)and(com_mem[i]<>'.') then begin
    str:=str_arr[str_index];
// если текущий символ - это число  
 if(integer(com_mem[i])>=49) and (integer(com_mem[i])<=57) then
 begin
   if (first_flag=false) then 
   begin 
    first_oper:=com_mem[i];
    first_flag:=true;
    i_first_stor:=i;
   end;
   if (first_flag=true)and(i<>i_first_stor) then 
   begin 
    second_oper:=com_mem[i];
    first_flag:=false;
   end;
//запихиваем строку обратно в str_arr
  end;
 end;
 if(tilda=true)and(com_mem[i]=';') then begin 
  tilda:=false;
 // writeln('dot= ', dot);
  for j:=1 to length(str) do begin
  if (str[j]='$') then str[j]:=first_oper;
  if (str[j]='#') then str[j]:=second_oper;
    end;
 first_flag:=false;   
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
 //#############3
  end;
  writeln('data_arr[0]=',data_arr[0]);
  writeln('data_arr[1]=',data_arr[1]);
  writeln('data_arr[2]=',data_arr[2]);
  writeln('data_arr[3]=',data_arr[3]);
  writeln('data_arr[4]=',data_arr[4]);
  writeln('data_arr[5]=',data_arr[5]);
  writeln();
//##############
 end; 
//##############
i:=i+1;
 goto _str_begining;
 _str_end:
 // Выводим строку-программу
  for inn := 1 to length(com_mem) do
   begin
    write(com_mem[inn]);
   end;

end. 

LABEL _str_begining,_str_end;
var
  myfile: text;
 //массив строк
  // каждая строка - это сигнатура функции
  str_arr:array[1..3] of string; 
 // data_arr:array[1..10] of integer; // числовое представление функции
  str:string;
  i,j:integer;
  inn: integer;
  str_index:integer;
  // строка-программа
  com_mem:string;
  exclamation:boolean;
 //tilda:boolean;
   //first_oper:char;
   //second_oper:char;
   //first_flag:boolean;
   //acc:integer;
   //i_first_stor:integer;
   //j_first_stor:integer;
   //sight:char;
begin
 assign (myfile, '/home/demsp/parsfile.txt');
 rewrite (myfile);
str:='          ';
i:=1;j:=1;  
str_index:=1;
exclamation:=false;
// текст программы
com_mem:='!a:$++#;!b:3*$;!c:$-#;~a 1 2;~b 5;~c 9 1;';

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
 //if(com_mem[i]='~')then  tilda:=true; 
   if (exclamation=true)and(com_mem[i]=':') then 
 begin
   while(com_mem[i]<>';')do 
   begin
   str[j]:=com_mem[i];
   write(str[j]);
     write (myfile, str[j]);
   i:=i+1;
   j:=j+1;
   end;
   writeln();
   writeln(myfile);
 
 exclamation:=false;
 str_arr[str_index] := str;
 str:='          ';
 j:=1;
 end; 
 //###############
 i:=i+1;
 goto _str_begining;
 _str_end:
 // Выводим строку-программу
  for inn := 1 to length(com_mem) do
   begin
    write(com_mem[inn]);
   end;
   close (myfile);
end. 

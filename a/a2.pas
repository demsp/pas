LABEL prev,next;
var
  com_mem:string;
  com_pointer:integer;
  string_arr:array[1..10] of string; //сигнатура функции
  reg_arr:array[1..10] of integer; // числовое представление функции
  
  pointer_stor:integer;
  digit_stor:integer;
  
  str:string;
  i,j:integer;
  inn: integer;
   //str_index:integer;
    //str_index_stor:integer;
  put_flag: boolean;
  space_flag: boolean;
  reg_flag:boolean;
  //first_oper:char;
  //second_oper:char;
begin
//str:='          ';
i:=1;j:=1;  
com_pointer:=1;
com_mem:='_b 2. _c b. _b 4. _d b.';

prev:
 if i>length(com_mem) then goto next; 
  
 if (com_mem[i]='a') or
    (com_mem[i]='b') or
    (com_mem[i]='c') or
    (com_mem[i]='d') or
    (com_mem[i]='e') or
    (com_mem[i]='f') then begin 
                    com_pointer:=integer(com_mem[i])-96;
                    reg_flag:=true;
                    end;
    
 if(com_mem[i]='1')or(com_mem[i]='2')or
   (com_mem[i]='3')or(com_mem[i]='4')or
   (com_mem[i]='5')or(com_mem[i]='6')or
   (com_mem[i]='7')or(com_mem[i]='8')or(com_mem[i]='9')
   then digit_stor:=integer(com_mem[i])-integer('0');   
 
 //li	reg, digit
 //li	reg, reg
 if(com_mem[i]='_') then begin
                         put_flag:=true;
                         end;
 if(put_flag=true) then begin 
  if (com_mem[i]=' ') then begin
      pointer_stor:=com_pointer;
      reg_flag:=false;  
                            end;  
                        end;
 if(put_flag=true)and(com_mem[i]='.') then begin 
  put_flag:=false;
  if (reg_flag=false) then reg_arr[pointer_stor]:=digit_stor;
  if (reg_flag=true) then reg_arr[pointer_stor]:=reg_arr[com_pointer];
 end;
 
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

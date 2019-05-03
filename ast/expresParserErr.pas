 LABEL prev,string_end;
var
 a : array[1..10] of integer;
 size : integer;
 str_arr: string;       // команды  
 i:integer;        // индексы строки и массива
 //j:integer;
 k:integer;
 number:integer;
  //i_stor: integer; 
// operation:integer;
 acc:integer;
 
 flag:integer;
 num_flag: integer;
 first_num:integer;
 
 
//Stack
procedure push(c : integer);
 begin
 a[size] := c; 
  writeln('size ',size); 
  writeln('a[size] ',a[size]); 
  size := size + 1;
  end;
 
 procedure pop;
 begin
  size := size - 1;
 end;
{---------------------------------------------------}
begin
 i:=1;
 first_num:=0;
 acc:=0;
 num_flag:=0;
 size := 1; {Изначально стек пуст}
 str_arr:='[2 [89]]'; 
 prev:
 if i>length(str_arr) then goto string_end; 
    //if (str_arr[i]='+') then data_arr[j]:= data_arr[j]+1;
    
    // скобки
    if (str_arr[i]='[') then Push(i);
       
     if (str_arr[i]=']') then
      begin
      Pop();
        i := a[size];
        writeln('inner_i=',i);
        flag:=1;
        str_arr[i]:=' ';
        goto prev;
      end; 
  if(flag=1) then 
 begin   
  if(integer(str_arr[i])>=49) and (integer(str_arr[i])<=57)  then 
    begin
     if(num_flag=0) then 
     begin
     number:=integer(str_arr[i])-integer('0');
     writeln('str_arr[i]= ',str_arr[i]);
     first_num:=number;
     writeln('first_num=',first_num);
     writeln('acc0=',acc);
     str_arr[i]:=' ';
     num_flag:=1;
     i:=i+1;
     goto prev;
     end;
     if(num_flag=1) then 
     begin
     number:=integer(str_arr[i])-integer('0');
     writeln('str_arr[i]= ',str_arr[i]);
     acc:= first_num+number ;
     writeln('acc1=',acc);
     num_flag:=0;
     str_arr[i]:='x';
     i:=i+1;
     goto prev;
     end;
    end;
 if(str_arr[i]='x') then 
   begin
   acc:=first_num+acc;
   writeln('accX=',acc);
   end;   
 end;     
 i:=i+1;
   writeln('i=',i);
   for k:=1 to 10 do 
     begin 
     write(' _',str_arr[k]); 
     //write(' ');
     end;
 goto prev;
 string_end:
for k:=1 to 10 do 
  begin 
  write('_ ',str_arr[k]); 
  //write(' ');
  end;
writeln('output acc=',acc);
end.

LABEL prev,string_end;
var
 a : array[0..10] of integer;
 size : integer;
 str_arr: string;       // команды  
 i:integer;        // индексы строки и массива
 //j:integer;
 k:integer;
 number:integer;
  //i_stor: integer; 
 operation:integer;
 acc:integer;
 
 flag:integer;
 num_flag: integer;
 first_num:integer;
 pop_flag:integer;
 
//Stack
procedure push(c : integer);
 begin
  writeln();
  writeln('sizePush1 ',size);
  //a[size+1] := c; 
  a[size] := c; 
  size := size + 1;
  writeln('sizePush2 ',size);
 end;
 
 procedure pop;
 begin
  writeln(); 
  writeln('sizePop1 ',size);
  size := size - 1;
  writeln('sizePop2 ',size);
 end;
{---------------------------------------------------}
begin
 operation:=0;
 i:=1;
 first_num:=0;
 acc:=0;
 num_flag:=0;
 pop_flag:=0;
 // size := 1; 
   size := 0; 
 str_arr:=' [-5 [-31]]'; 
 prev:
 if i>length(str_arr) then goto string_end; 
    
    // скобки
    if (str_arr[i]='[') then 
      begin 
      if (pop_flag=0) then push(i);
      if (pop_flag=1) then 
        begin
        pop_flag:=0;
        str_arr[i]:=' ';
        end;
      end; 
     if (str_arr[i]=']') then
      begin
      pop_flag:=1;
      str_arr[i]:=' ';
      Pop();
      // i := a[size+1];
       i := a[size];
        writeln('inner_i=',i);     //////// inner_i
        flag:=1;
        //str_arr[i]:=' ';
        goto prev;
      end; 
  if(flag=1) then 
 begin   
    if(str_arr[i]='+') then operation:=1;
     if(str_arr[i]='-') then operation:=2;
      if(str_arr[i]='+') or (str_arr[i]='-')  then  str_arr[i]:='!';
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
     //	//			//			//
     //acc:= first_num+number ;
     if(operation=1) then acc:= first_num + number ;
     if(operation=2) then acc:= first_num - number ;
     if(operation=0) then writeln('OPERATION ERROR') ;
     writeln('acc1=',acc);
     num_flag:=0;
     str_arr[i]:='x';
     i:=i+1;
     goto prev;
     end;
    end;
 if(str_arr[i]='x') then 
   begin
   //		//			//		//
   //acc:=first_num+acc;
   if(operation=1) then acc:= first_num + acc ;
    if(operation=2) then acc:= first_num - acc ;
     if(operation=0) then writeln('OPERATION ERROR') ;
   writeln('accX=',acc);
   str_arr[i]:=' ';
   end;   
 end;     
 i:=i+1;
   writeln('i=',i);
   for k:=1 to 10 do 
     begin 
     write(str_arr[k]); 
     //write(' ');
     end;
     write(' ');
     writeln();
    // {*
     writeln('a[0]=',a[0]);
     writeln('a[1]=',a[1]);
     writeln('a[2]=',a[2]);
     writeln('a[3]=',a[3]);
     writeln('a[4]=',a[4]);
     writeln('a[5]=',a[5]);
    // *} 
 goto prev;
 string_end:
for k:=1 to 10 do 
  begin 
  write('_',str_arr[k]); 
  end;
 writeln();
writeln('output acc=',acc);
end.

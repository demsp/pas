var
 a : array[1..10] of integer;
 size : integer;  
 str_arr: string;                     
 i, j: integer;                       
 i_stor: integer;
 digit_flag:integer;
 op_flag: integer;
 
 acc1,acc2: integer;
{-----------------------------} 
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
{-----------------------------}
begin
// j:=1;   
acc1:=0; 
digit_flag:=0; 
str_arr:='135';
 for i:=1 to length(str_arr) do begin    // в цикле обрабатываем строку
  //  if (str_arr[i]='+') then plus_flag:=1;
  
  if(ord(str_arr[i])>=49) and (ord(str_arr[i])<=57)  then 
  begin
     // if (digit_flag=0) and (plus_flag=0) then begin 
    if (digit_flag=0) then 
    begin 
     digit_flag:=1;                         
    end;
    if (digit_flag=1) then 
    begin
     acc1:=acc1*10;
     acc1:=acc1+(ord(str_arr[i])-ord('0'));
     writeln('acc1=',acc1);
    end;                       
  end;
 if(str_arr[i]='+') or (str_arr[i]='-') then 
  begin
   digit_flag:=0; 
  end;
 end;
 writeln(acc1);
end.

 var
 str_arr: string;                     
 i: integer;
 digit_flag:integer;
     acc: integer; 
begin
 digit_flag:=0; 
 str_arr:='123';
 for i:=1 to length(str_arr) do begin    // в цикле обрабатываем строку
   if(ord(str_arr[i])>=49) and (ord(str_arr[i])<=57)  then begin
      if (digit_flag=0) then begin 
                          digit_flag:=1;
                          end;
  if (digit_flag=1) then begin
                          acc:=acc*10;
                          acc:=acc+(integer(str_arr[i])-integer('0'));
                          writeln('acc1=',acc);
                         end;
  end;
 end;
 writeln(acc);
end.

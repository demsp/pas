var
 data_arr:array[1..10] of integer;    
 str_arr: string;                     
 i, j: integer;                       
 i_stor: integer;
 digit_flag:integer;
 plus_flag: integer;
 
 acc: integer;
 
begin
 j:=1;                
 //readln(str_arr);       
str_arr:='123+2';
 for i:=1 to length(str_arr) do begin    // в цикле обрабатываем строку
  //if (str_arr[i]='+') then data_arr[j]:= data_arr[j]+1;
  //if (str_arr[i]='.') then write(chr(data_arr[j]));
  
  if (str_arr[i]='+') then plus_flag:=1;
  
  if (str_arr[i]='0')
  or (str_arr[i]='1') 
  or (str_arr[i]='2') 
  or (str_arr[i]='3') 
  or (str_arr[i]='4') 
  or (str_arr[i]='5')
  or (str_arr[i]='6')
  or (str_arr[i]='7')
  or (str_arr[i]='8')
  or (str_arr[i]='9')then begin
  if (digit_flag=0) and (plus_flag=0) then begin 
                          digit_flag:=1;
                          acc:=integer(str_arr[i])-integer('0');
                          i_stor:=i;
                          end;
  if (digit_flag=1) and (i<>i_stor) and (plus_flag=0) then begin
                          acc:=acc*10;
                          acc:=acc+(integer(str_arr[i])-integer('0'));
                         end;
 if (plus_flag=1) then begin
                          plus_flag:=0;
                          acc:=acc+(integer(str_arr[i])-integer('0'));
                         end;                         
  end;
 
 
 
 end;
 println(acc);
end.

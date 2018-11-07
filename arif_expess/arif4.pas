var
 data_arr:array[1..10] of integer;    
 str_arr: string;                     
 i,i1, j: integer;                       
 i_stor: integer;
 digit_flag:integer;
 sight_flag: integer;
  
 acc: integer;
 acc1:integer;
 
begin
 j:=1;
 sight_flag:=0;
 //readln(str_arr);       
str_arr:='34-22';
 for i:=1 to length(str_arr) do begin   
  if (str_arr[i]='+') then begin
  digit_flag:=0;
  sight_flag:=1;
  end;
  if (str_arr[i]='-') then begin
  digit_flag:=0;
  sight_flag:=2;
  end;
  
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
  if (digit_flag=0) and (sight_flag=0) then begin 
                          digit_flag:=1;
                          acc:=integer(str_arr[i])-integer('0');
                          i_stor:=i;
                          end;
  if (digit_flag=1)and(i<>i_stor)and(sight_flag=0) then begin
                          acc:=acc*10;
                          acc:=acc+(integer(str_arr[i])-integer('0'));
                         end;
 if (sight_flag<>0)and(digit_flag=0) then begin
                          digit_flag:=1;
                          i_stor:=i;
                          acc1:=acc1+(integer(str_arr[i])-integer('0'));
                         end;
if (sight_flag<>0)and(digit_flag=1)and(i<>i_stor) then begin                         
                          acc1:=acc1*10;
                          acc1:=acc1+(integer(str_arr[i])-integer('0'));
                         end;
 
  end;
 
 
 end;
 if (sight_flag=1) then   acc:=acc+acc1;
 if (sight_flag=2) then  acc:=acc-acc1;
 println(acc);
end.

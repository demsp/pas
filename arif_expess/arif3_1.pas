var
 data_arr:array[1..10] of integer;    
 str_arr: string;                     
 i, j: integer;                       
 i_stor: integer;
 digit_flag:integer;
 digit_flag1:integer;
 plus_flag: integer;
 
 acc: integer;
 acc1: integer;
 
begin
acc:=0;
acc1:=0;
 j:=1;                

str_arr:='123+2';
//str_arr:='123+20';
//str_arr:='123+4+6';
 for i:=1 to length(str_arr) do begin   
  
  
  if (str_arr[i]='+') then begin 
  plus_flag:=1;
  digit_flag:=0;
  acc:=acc+acc1;
  acc1:=0;
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
  if (digit_flag=0) and (plus_flag=0) then begin 
                          digit_flag:=1;
                          acc:=integer(str_arr[i])-integer('0');
                          i_stor:=i;
                          end;
  if (digit_flag=1) and (i<>i_stor) and (plus_flag=0) then begin
                          acc:=acc*10;
                          acc:=acc+(integer(str_arr[i])-integer('0'));
                         end;
 //второе число
if (plus_flag=1)and(digit_flag=0)then begin
                          digit_flag:=1;
                          i_stor:=i;
                          acc1:=acc1+(integer(str_arr[i])-integer('0'));
                         end;      
if (digit_flag=1) and (i<>i_stor) and (plus_flag=1) then begin
                          acc1:=acc1*10;
                          acc1:=acc1+(integer(str_arr[i])-integer('0'));
                         end;   
   end;
  
 end;
 acc:=acc+acc1;
 println(acc);
end.

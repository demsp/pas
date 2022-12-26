LABEL t;

var
 str:string[30];
 var_acc:integer;
 i,j: integer;
 arr:array[0..3] of integer;
 radix_flag:boolean;
 radix_acc:integer;

 begin

   str:=' a=23 b=45  ';

  while i<length(str)+1 do  
  begin
    if Ord(str[i])>=97 then if Ord(str[i])<=100 then var_acc:=Ord(str[i]);
    
    if radix_flag=true then if Ord(str[i])<48 then goto t;
    if radix_flag=true then if Ord(str[i])>58 then  
     begin
      t:
      arr[var_acc-97]:=radix_acc;
      radix_flag:=false;
     end;
     if radix_flag=true then if Ord(str[i])>=48 then if Ord(str[i])<=58 then  radix_acc:=radix_acc*10+(Ord(str[i])-48);
     if radix_flag=false then if Ord(str[i])>=48 then if Ord(str[i])<=58 then  
       begin
        radix_flag:=true;
        radix_acc:=Ord(str[i])-48;
       end;     

    i:=i+1;
    end;  
    for j:=0 to 3 do write(arr[j],' ');

 end.

var
  str:string[30];
  var_acc:integer;
  i,j: integer;
  arr:array[0..3] of integer; 
  flag: boolean;
  acc: integer;
  begin
    str:=' a=3; b=2+a+4; ';
   while i<length(str) do 
   begin
     //if flag=true then if Ord(str[i])>=97 then if Ord(str[i])<=100 then arr[var_acc-97]:=arr[Ord(str[i])-97];  
     if flag=true then if Ord(str[i])>=97 then if Ord(str[i])<=100 then acc:=acc+arr[Ord(str[i])-97];
     if flag=false then if Ord(str[i])>=97 then if Ord(str[i])<=100 then 
     begin
       flag:=true;
       var_acc:=Ord(str[i]);
       end;
     //if Ord(str[i])>=48 then if Ord(str[i])<=58 then arr[var_acc-97]:=Ord(str[i])-48;
     if Ord(str[i])>=48 then if Ord(str[i])<=58 then acc:=acc+(Ord(str[i])-48);
     if str[i]=';' then     
       begin
       flag:=false;
       arr[var_acc-97]:=acc;
       acc:=0;
       end;       
     i:=i+1;
     end; 
     for j:=0 to 3 do writeln(arr[j]);
  end.

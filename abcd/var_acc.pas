var
  str:string[30];
  var_acc:integer;
  i: integer;
  arr:array[0..3] of integer; 
  begin
    str:=' a=2 b=3 ';
   while i<length(str) do 
   begin
     if Ord(str[i])>=97 then if Ord(str[i])<=100 then 
     begin
       var_acc:=Ord(str[i]);
       print(var_acc);
     end;
     i:=i+1;
     end;    
    end.

var
  str:string[30];
  var_acc:integer;
  i,j: integer;
  arr:array[0..3] of integer; 
  begin
    str:=' a=2 b=3 ';
   while i<length(str) do 
   begin
     if Ord(str[i])>=97 then if Ord(str[i])<=100 then var_acc:=Ord(str[i]);
     if Ord(str[i])>=48 then if Ord(str[i])<=58 then arr[var_acc-97]:=Ord(str[i])-48;       
     i:=i+1;
     end; 
     for j:=0 to 3 do writeln(arr[j]);
  end.

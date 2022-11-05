var
  str:string[30];
  var_acc:integer;
  i,j: integer;
  arr:array[0..3] of integer; 
  flag: boolean;
  acc: integer;
  number_of_iterations: integer;
  index_acc:integer;
  
  begin
    str:=' a=5; b=7; a[ b=b-1; `b ] ';
    
   while i<length(str) do 
   begin
     if flag=true then if Ord(str[i])>=97 then if Ord(str[i])<=100 then acc:=acc+arr[Ord(str[i])-97];
     if flag=false then if Ord(str[i])>=97 then if Ord(str[i])<=100 then 
     begin
       flag:=true;
       var_acc:=Ord(str[i]);
       end;
     if Ord(str[i])>=48 then if Ord(str[i])<=58 then acc:=acc+(Ord(str[i])-48);
     if str[i]=';' then     
       begin
       flag:=false;
       arr[var_acc-97]:=acc;
       acc:=0;
       end;
     if str[i]='[' then
     begin
      index_acc := i;
      number_of_iterations := var_acc;
     end;
     if str[i]=']' then
     begin
       arr[number_of_iteration-97] := arr[number_of_iteration-97]-1; 
       i := index_acc;
     end;  
     
     if str[i] = '`' then 
     begin
     i := i+1;
     writeln(arr[Ord(str[i])-97]);
     end;
     
     i:=i+1;
     end; 
     for j:=0 to 3 do writeln(arr[j]);
  end.

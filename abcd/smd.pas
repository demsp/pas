var
  str:string;
  var_acc:integer;
  i,j: integer;
  arr:array[0..4] of real; 
  flag: boolean;
  acc: real;
  number_of_iterations: integer;
  index_acc:integer;
  bin_operator: char;
  
  begin
   str:= ' a=5; b=2; c=a-b; `c c=a*b; `c c=a/b; `c ';
    
   bin_operator:='+'; 
    
   while i<length(str) do 
   begin
     // binary operators
     if str[i]='+' then bin_operator:='+';
     if str[i]='-' then bin_operator:='-';
     if str[i]='*' then bin_operator:='*';
     if str[i]='/' then bin_operator:='/';
     
     if flag=true then if Ord(str[i])>=97 then if Ord(str[i])<=101 then 
      begin
       if bin_operator='+' then acc:=acc+arr[Ord(str[i])-97];
       if bin_operator='-' then acc:=acc-arr[Ord(str[i])-97];
       if bin_operator='*' then acc:=acc*arr[Ord(str[i])-97];
       if bin_operator='/' then acc:=acc/arr[Ord(str[i])-97];
      end;
     if flag=false then if Ord(str[i])>=97 then if Ord(str[i])<=101 then 
     begin
       flag:=true;
       var_acc:=Ord(str[i]);
       end;
     if Ord(str[i])>=48 then if Ord(str[i])<=58 then 
      begin
       if bin_operator='+' then acc:=acc+(Ord(str[i])-48);
       if bin_operator='-' then acc:=acc-(Ord(str[i])-48);
       if bin_operator='*' then acc:=acc*(Ord(str[i])-48);
       if bin_operator='/' then acc:=acc/(Ord(str[i])-48);
     end;
     if str[i]=';' then     
       begin
       flag:=false;
       arr[var_acc-97]:=acc;
       acc:=0;
       bin_operator:='+';
       end;
     if str[i]='[' then
     begin
      index_acc := i;
      number_of_iterations := var_acc;
      flag := false;
     end;
     if str[i]=']' then if arr[number_of_iterations-97]>0 then
     begin
       arr[number_of_iterations-97] := arr[number_of_iterations-97]-1; 
       i := index_acc;
     end;  
     if str[i] = '`' then 
     begin
     i := i+1;
     writeln(arr[Ord(str[i])-97]:4:4);
     end;
     
     i:=i+1;
     end; 
     for j:=0 to 3 do write(arr[j]:4:4,' ');
  end.

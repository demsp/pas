program untitled;
uses crt;
7
var
  str:string[30];
  var_acc:integer;
  i,j: integer;
  //arr:array[0..3] of integer; 
  //acc: integer;
  arr:array[0..3] of real; 
  acc: real;
  flag: boolean;
  number_of_iterations: integer;
  index_acc:integer;
  operator_acc:integer;
  
  begin
    // str:=' a=5;  a[ `a; ] ';
    // str:=' a=2*2; b=5; c=a*3/b; `a; `b; ';
     str:= ' a=2+2*2; `a;  ';
    operator_acc:=43; // plus
    
   while i<length(str) do 
   begin
     // operator
     if Ord(str[i])=42 then operator_acc:=42; // mul 
     if Ord(str[i])=43 then operator_acc:=43; // plus
     if Ord(str[i])=45 then operator_acc:=45; // minus
     if Ord(str[i])=47 then operator_acc:=47; // div
     
     // flag
     if flag=true then if Ord(str[i])>=97 then if Ord(str[i])<=100 then 
     //acc:=acc+arr[Ord(str[i])-97];
     begin
     if operator_acc=42 then acc:=acc*arr[Ord(str[i])-97];
     if operator_acc=43 then acc:=acc+arr[Ord(str[i])-97];
     if operator_acc=47 then acc:=acc/arr[Ord(str[i])-97];
     end;
     if flag=false then if Ord(str[i])>=97 then if Ord(str[i])<=100 then 
     begin
       flag:=true;
       var_acc:=Ord(str[i]);
       end;
     if Ord(str[i])>=48 then if Ord(str[i])<=58 then //acc:=acc+(Ord(str[i])-48);
     begin
     if operator_acc=42 then acc:=acc*(Ord(str[i])-48);
     if operator_acc=43 then acc:=acc+(Ord(str[i])-48);
     if operator_acc=47 then acc:=acc/(Ord(str[i])-48);
     end;
     if str[i]=';' then     
       begin
       flag:=false;
       arr[var_acc-97]:=acc;
       acc:=0;
       operator_acc:=43; // plus
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
     writeln(arr[Ord(str[i])-97]:0:3);
     end;
     
     i:=i+1;
     end; 
     for j:=0 to 3 do write(arr[j]:0:3,' ');
  end.

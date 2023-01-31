var
  str:string[30];
  
  acc:integer;
  i,j,k: integer;
  operands:array[0..9] of integer; 
  operators: array[0..9] of char;  
  
  procedure A;
    begin
     operators[j]:=str[i];
    end;
  
  begin
    str:=' 2+3*4+5; ';
    operators[0]:='+';
   while i<length(str) do 
   begin
   if str[i]='+' then A;
   if str[i]='-' then A;
    if Ord(str[i])>=48 then if Ord(str[i])<=58 then if operators[j]='+' then
       begin
         operands[j]:=Ord(str[i])-48;
         j:=j+1;
       end;
      
      if Ord(str[i])>=48 then if Ord(str[i])<=58 then if operators[j]='*' then 
        begin
         operators[j]:=' ';
         acc:=(Ord(str[i])-48)*operands[j-1];
         writeln('acc=',acc);
         operands[j-1]:=acc;
        end;
     i:=i+1;
     end; 
     for k:=0 to 9 do write(operators[k],' ');
     writeln();
     for k:=0 to 9 do write(operands[k],' ');
  end.

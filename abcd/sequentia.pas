var
  str: string[100];
  char_acc:char;
  char_acc_acc: char;
  digit_acc:integer;
  i: integer; // index
  i_acc: integer;  
  flag: boolean;
  arr: array [0..3] of integer;  
  bin_operator:char; // arithmetic sign +-*/    
  
  begin
  for i:=1 to 4 do arr[i]:=0;
  digit_acc:=0;
  bin_operator:='+';
  flag:=false;
  str:= ' a=1; b=1; d=9; [ c=a+b; a=b; b=c; #b ] ';  
  i:=1; // numeration begining 
  while i<length(str) do
  begin
   if str[i]='+' then bin_operator:='+';
   if str[i]='-' then bin_operator:='-';
   if flag=true then  if Ord(str[i])>=97 then if Ord(str[i])<=100 then // letter
    begin 
     if bin_operator='+' then digit_acc:=digit_acc+arr[Ord(str[i])-97];
     if bin_operator='-' then digit_acc:=digit_acc-arr[Ord(str[i])-97];
    end;    
   if flag=false then if Ord(str[i]) >=97 then if Ord(str[i]) <= 100 then // letter
    begin
      flag := true;      
      char_acc:=str[i];
     end;
   if Ord(str[i])>=48 then if Ord(str[i])<=58 then // digit 
   begin
     if bin_operator='+' then digit_acc:=digit_acc+(Ord(str[i])-48);
     if bin_operator='-' then digit_acc:=digit_acc-(Ord(str[i])-48);
     end;
   if str[i]=';' then begin
     flag := false;
     arr[Ord(char_acc)-97]:=digit_acc;
     digit_acc:=0;
     end;
   if str[i]='#' then begin // output operator
     i+=1;
     writeln(arr[Ord(str[i])-97]);
     end;      
  if str[i]='[' then begin
    char_acc_acc:=char_acc;
    i_acc:=i;
  end;
  if str[i]=']' then if arr[Ord(char_acc_acc)-97] > 0 then begin
     arr[Ord(char_acc_acc)-97]:=arr[Ord(char_acc_acc)-97]-1;
     i:=i_acc;
     end;     
     i:=i+1;  // to new character
  end;
   
 end.

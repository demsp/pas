var
  str:string[100];
  var_acc:integer;
  i,j: integer;
  arr:array[0..3] of real;   
  acc: real;
  flag: boolean;
  oprtr:char;
  
  begin
    str:=' a=3; b=2+a; c=a*b; d=c-2; d=d/b;  ';
    
    oprtr:='+';
    
   while i<length(str) do 
   begin
     if str[i]='+' then oprtr:=str[i];
     if str[i]='-' then oprtr:=str[i]; 
     if str[i]='*' then oprtr:=str[i];
     if str[i]='/' then oprtr:=str[i]; 
     
     //if flag=true then if Ord(str[i])>=97 then if Ord(str[i])<=100 then acc:=acc+arr[Ord(str[i])-97];
     if flag=true then if Ord(str[i])>=97 then if Ord(str[i])<=100 then 
       begin
       if oprtr='+' then acc:=acc+arr[Ord(str[i])-97];
       if oprtr='-' then acc:=acc-arr[Ord(str[i])-97];
       if oprtr='*' then acc:=acc*arr[Ord(str[i])-97];
       if oprtr='/' then acc:=acc/arr[Ord(str[i])-97];
       end;
     if flag=false then if Ord(str[i])>=97 then if Ord(str[i])<=100 then 
     begin
       flag:=true;
       var_acc:=Ord(str[i]);
       end;
     //if Ord(str[i])>=48 then if Ord(str[i])<=58 then acc:=acc+(Ord(str[i])-48);
     if Ord(str[i])>=48 then if Ord(str[i])<=58 then 
       begin
         if oprtr='+' then acc:=acc+(Ord(str[i])-48);
         if oprtr='-' then acc:=acc-(Ord(str[i])-48);
         if oprtr='*' then acc:=acc*(Ord(str[i])-48);
         if oprtr='/' then acc:=acc/(Ord(str[i])-48);
       end;
     if str[i]=';' then     
       begin
       flag:=false;
       arr[var_acc-97]:=acc;
       acc:=0;
       oprtr:='+';
       end;       
     i:=i+1;
     end; 
     for j:=0 to 3 do write(arr[j]:4:4,' ');
  end.

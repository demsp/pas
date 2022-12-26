LABEL t;

var
  str:string[100];
  var_acc:integer;
  i,j: integer;
  arr:array[0..3] of real;   
  acc: real;
  flag: boolean;
  oprtr:char;
  
  radix_flag: boolean;
  radix_acc: integer;
  
  begin
    str:=' a=13; b=2+a; c=a*b; d=c-2; d=d/b;   ';
    
    oprtr:='+';
    
   while i<length(str) do 
   begin
     if str[i]='+' then oprtr:=str[i];
     if str[i]='-' then oprtr:=str[i]; 
     if str[i]='*' then oprtr:=str[i];
     if str[i]='/' then oprtr:=str[i]; 
     
     if radix_flag=true then if Ord(str[i])<48 then goto t;
     if radix_flag=true then if Ord(str[i])>58 then  
     begin
      t:
      //acc:=radix_acc;
      if oprtr='+' then acc:=acc+radix_acc;
      if oprtr='-' then acc:=acc-radix_acc;
      if oprtr='*' then acc:=acc*radix_acc;
      if oprtr='/' then acc:=acc/radix_acc;
      radix_acc:=0;
      radix_flag:=false;
     end;
     if radix_flag=true then if Ord(str[i])>=48 then if Ord(str[i])<=58 then  radix_acc:=radix_acc*10+(Ord(str[i])-48);
     if radix_flag=false then if Ord(str[i])>=48 then if Ord(str[i])<=58 then  
       begin
        radix_flag:=true;
        radix_acc:=Ord(str[i])-48;
       end;   
     
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

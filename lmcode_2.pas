LABEL prev, prev1,prev2,next;
var
 data_arr:array[1..10] of integer;    // массив данных
 str_arr: string;                     // команды  
 i,j,k: integer;                       // индексы строки и массива
 pzf_i_stor: integer;
 acc: integer;
 z_flag, pz_flag: integer;
begin
data_arr[1]:=3;
data_arr[2]:=1;
 j:=1;               
 i:=1;
 //readln(str_arr);       //считываем строку
 //str_arr:=',_>,_<-{^/}>^\.'; //max
 str_arr:='.}^.>-<_{';
 
 z_flag:=1; 
 pz_flag:=1;
 pzf_i_stor:=0;
 
 prev:
 if i>length(str_arr) then goto next;
 //jmp
 if (str_arr[i]='/') then 
 begin
 prev1:
  i:=i+1;
  if (str_arr[i]<>'\') then goto prev1; 
 end;
 
 //jmp>=0
 if (str_arr[i]='{') and (pz_flag=1)then 
begin 
 if(pzf_i_stor=0) then
    begin
    prev2:
    i:=i+1;
    if (str_arr[i]<>'}') then goto prev2; 
    end
 else
    begin
       i:=pzf_i_stor;
       goto prev;
       end;
end; 
    //  CONDITIONS
    if (str_arr[i]=',') then read(acc);
    if (str_arr[i]='_') then data_arr[j]:= acc;
    if (str_arr[i]='^') then acc:=data_arr[j];
    if (str_arr[i]='+') then acc:=acc+data_arr[j];
    if (str_arr[i]='-') then acc:=acc-data_arr[j];
    if (str_arr[i]='>') then j:=j+1;
    if (str_arr[i]='<') then j:=j-1;
    if (str_arr[i]='.') then writeln('Output = ',acc);
    if (str_arr[i]='}') then pzf_i_stor:=i;
    
    {---
    if (str_arr[i]='[') then
     begin  
      if data_arr[j]>0 then i_stor:=i;
     end;
    if (str_arr[i]=']') then
     begin  
      if data_arr[j]>0 then 
       begin
       i:=i_stor;
       goto prev;
       end;
     end;
 ---}
 if (acc=0) then z_flag:=1
 else z_flag:=0;
 if (acc=0) or (acc>0) then pz_flag:=1
 else pz_flag:=0;
 i:=i+1;
 goto prev;
 next:
writeln(); 
for k:=1 to 10 do begin 
write(data_arr[k]);
write(' ');
end;
writeln();
writeln('acc = ',acc);
writeln('z_flag = ',z_flag);
writeln('pz_flag = ',pz_flag);
end.

LABEL prev,next;
var
 str_arr:array[1..3] of string;
 str:string;
 i,j,k,m:byte;
 inn: byte;
 com_mem:string;
 com_mem_flag:boolean;
 func_list:array[1..3] of char;
begin
str:='          ';
i:=1;j:=1;k:=1;m:=1;  
com_mem_flag:=false;
//com_mem:='[!x[+aa]]';
com_mem:='[!x[+aa]][!y[*aa]]';

prev:
 if i>length(com_mem) then goto next; 
 if(com_mem[i]='!')then begin
 com_mem_flag:=true;
 end;
 if(com_mem_flag=true)and((com_mem[i]='x')or(com_mem[i]='y')or(com_mem[i]='z'))then begin
 func_list[j]:=com_mem[i];
 j:=j+1;
 end;
if(com_mem[i]='[')and(com_mem_flag=true) then begin
while(com_mem[i]<>']')do begin
 if(com_mem[i]<>'[') then  str[k]:=com_mem[i];
 i:=i+1;
 k:=k+1;
end;
com_mem_flag:=false;
str_arr[m] := str;
m:=m+1;
end;

{
if(com_mem[i]=']')and(com_mem_flag=true) then begin
com_mem[i]:=' ';
com_mem_flag:=false;
str_arr[j] := str;
j:=j+1;
end;
}
i:=i+1;
 goto prev;
 next:

{Выводим массив строк}
for inn := 1 to length(com_mem) do
begin
write(com_mem[inn]);
end;
writeln;
//writeln(str);
writeln();

write(func_list[1]); write(str_arr[1]);
writeln();
write(func_list[2]);write(str_arr[2]);
writeln();
write(func_list[3]);write(str_arr[3]);

end.     

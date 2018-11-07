var
 data_arr:array[1..10] of integer;    // массив данных
 str_arr: string;                     // команды  
begin
str_arr:='123';
data_arr[1]:=49;
println(char(data_arr[1]));
println(integer(str_arr[1]));
end.

var
 a : array[1..100] of integer;
 size  : integer;

procedure push(c : integer);
 begin
  size := size + 1;
  a[size] := c; 
 end;
 
 procedure pop;
 begin
  size := size - 1;
 end;

 begin
  size := 0; {Изначально стек пуст}
  push(5);
  push(6);
  
  writeln(a[size]);
  pop();
  writeln(a[size]);
 
 end.

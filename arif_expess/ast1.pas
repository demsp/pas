var
     command_mem: string;                 // command array
     inx_of_arr:integer;
     i,i1: integer;                         // index of command array
     temp:integer;
   begin
      inx_of_arr:=1;                  
      command_mem:='2+3';
     for i:=1 to length(command_mem) do begin   
      if (ord(command_mem[i])>=49) and (ord(command_mem[i])<=57) then 
      begin
       temp:=ord(command_mem[i])-48;
       writeln(temp);
      end;
     end;
    
   end.
    

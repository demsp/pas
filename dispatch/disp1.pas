//(define (dispatch mess)(mess 1))
//(define (x a )(+ a 10))
//(dispatch x)
 
var 
mess:integer;

function add(lambda: integer):integer;
 begin
  add:=lambda+1;
  //writeln('_= ',lambda);
 end;
 
 function dispatch(lambda: integer):integer;
 begin
  lambda:=10;
  mess:=lambda;
  //writeln('_= ',lambda);
  
 end;

procedure set_const(lambda: integer);
 begin
  lambda:=10;
  writeln('_= ',lambda);
 end;

begin
 writeln('mess= ',mess);
 set_const(mess);
 writeln('mess= ',mess);
 writeln('add(mess)= ',add(mess));
 // dispatch(mess)-> add
  writeln('add(dispath(mess))= ',add(dispatch(mess)));
end.

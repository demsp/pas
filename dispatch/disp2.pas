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
  lambda:=50;
  mess:=lambda;
  //writeln('_= ',lambda);
  
 end;

function _add(i: integer; j: integer):integer;
 begin
  _add:=i+j;
  
 end;

function main_add(k: integer; resiv:integer ):integer;
//var reciever:integer;
 begin
  //_add(k,reciv);
  main_add:=k + resiv;
 end;


procedure set_const(lambda: integer);
 begin
  lambda:=10;
  writeln('_= ',lambda);
 end;

begin
 //writeln('mess= ',mess);
 //set_const(mess);
 //writeln('mess= ',mess);
 //writeln('add(mess)= ',add(mess));
        // dispatch(mess)-> add
        // writeln('add(dispath(mess))= ',add(dispatch(mess)));
 writeln('_add(1,2)= ',_add(1,2));
 writeln('main_add(1, mess_10)= ',main_add(1,  dispatch(mess) ) ); //51
end.

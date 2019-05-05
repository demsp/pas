//(define (dispatch mess)(mess 1))
//(define (x a )(+ a 10))
//(dispatch x)
 
var 
mess:integer;

function _increment(alpha: integer):integer;
 begin
  _increment:=alpha+1;
  //writeln('_= ',alpha);
 end;
 
function dispatch(alpha: integer):integer;
 begin
  alpha:=40;
  mess:=alpha;
 end;
 
function dispatch1():integer;
var
  alpha:integer;
 begin
  alpha:=50;
  dispatch1:=alpha;
 end;
// пусть процедура dispatch устанавливает в 50 
// глобальную мутабельную переменную mess
 //procedure dispatch();
 //begin
 // mess:=50;
 //end;
// вызываем  dispatch из main
 // writeln('main_add(1, mess_10)= ',main_add(5,  dispatch) );

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
 //writeln('main_add(1, mess_10)= ',main_add(5,  6) );
 
 writeln('main_add(1, mess_10)= ',main_add(2,  dispatch(mess) ) );
 writeln('main_add(1, mess_10)= ',main_add(5,dispatch1() ) );

end.

// progText:='_f(x,y):y-x; f:2,3';

LABEL _str_begining,_str_end;
var
 //массив строк
  // каждая строка - это сигнатура функции
   
  //variables:array[1..10] of integer; // результат выполниния функции
  //funcNum:array[1..26] of integer;
  numInAlphabet:integer; //номер функции в алфавите
  //str:string;
  //matrix: array [1..26, 1..10] of integer; 
  i:integer;
  progText:string;
  empty_str:string;
  //def:boolean;   //фукция 
  underline,openBrace,closeBrace,space:boolean; //скобки
  
BEGIN
empty_str:='           ';
progText:='_ f(x,y):y-x; f:2,3';
i:=1; //index;
_str_begining:
 if i>length(progText) then goto _str_end; 
 // начало цикла обработки строки
 //######################
 if(progText[i]='_') then underline:=true; 
 if(underline=true) 	then 
    begin
    if (progText[i]='_') then space:=true;
    end;
 if(space=true) then 
    begin           
    // помещаем в numInAlphabet номер буквы в алфавите, чтобы
    // знать, в какой мы сейчас функции
      if(integer(progText[i])>=97) and (integer(progText[i])<=122) then 
         begin
          writeln('letter ',progText[i]);
          numInAlphabet:= integer(progText[i])-96;
          writeln('numInAlphabet=',numInAlphabet);
         end;      
   end;
 if (progText[i]='(') then 
     begin
      space:=false;   
      openBrace:= true;
     end; 
i:=i+1;
 goto _str_begining;
 _str_end:	
END.

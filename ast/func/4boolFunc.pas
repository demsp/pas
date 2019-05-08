// progText:='_f(x,y):y-x; f(2,3)';

LABEL _str_begining,_str_end;
var
 //массив строк
  // каждая строка - это сигнатура функции
   
  //varNames:array[1..10] of char; 
  funcNames:array[1..10] of char; // массив названий функций
  varNames_matrix: array [1..26, 1..10] of char; 
  //funcNum:array[1..26] of integer;
  numInAlphabet:integer; //номер функции в алфавите
  adrOfDefiner:array[1..26] of integer;
  //str:string;
  //matrix: array [1..26, 1..10] of integer; 
  i,j,fN_index:integer;
  progText:string;
  //empty_str:string;
  //def:boolean;   //фукция 
  underline,openBrace,closeBrace,space:boolean; //скобки
  boolFunc: boolean;
  
BEGIN
//empty_str:='           ';

//progText:='_ f(x,y):y-x; _ j;f:2,3';
progText:='_ f(x,y):y-x; f:2,3';
i:=1; //index
j:=1; //index
fN_index:=1;
_str_begining:
 if i>length(progText) then goto _str_end; 
//  writeln('i=',i); // выводим индекс i
//  writeln('underline=',underline);
 // начало цикла обработки строки
 //######################
 if(progText[i]='_') then underline:=true; 
 //if(underline=true) 	then 
    //begin
    if (progText[i]=' ') then space:=true;
 //   end;
 if(space=true) and (underline=true) then 
    begin       
    // помещаем в funcNum в ячейку с индексом, равным progText[i]-96
    //
    // помещаем в numInAlphabet номер буквы в алфавите, чтобы
    // знать, в какой мы сейчас функции
      if(integer(progText[i])>=97) and (integer(progText[i])<=122) then 
         begin
         writeln('letter ',progText[i]);
         numInAlphabet:= integer(progText[i])-96;
         writeln('numInAlphabet=',numInAlphabet);
         funcNames[fN_index]:=progText[i];
         fN_index:=fN_index+1;
         end;      
   end;
 if (progText[i]='(') and (underline=true) then 
     begin
      space:=false;   
      openBrace:= true;
      writeln('underline=',underline);
     end; 
 if (openBrace= true) then   
   begin
   // помещаем в varNames_matrix названия передаваемых в функцию переменных
    if(integer(progText[i])>=97) and (integer(progText[i])<=122) then 
       begin
       //varNames[j]:=progText[i];
       //writeln('varNames[',j,']=',varNames[j]);
       //j:=j+1;
      varNames_matrix[numInAlphabet][j]:=progText[i];
  writeln('varNames_matrix[',numInAlphabet,'][',j,']=',varNames_matrix[numInAlphabet][j]);   
      j:=j+1;
       end;
   end;
 if (progText[i]=')') then   
    begin
    openBrace:= false;
    j:=1; // сбрасываем индекс массива varNames
    end;
// обрабатываем :
 if (progText[i]=':') and (underline=true) then 
  begin
  adrOfDefiner[numInAlphabet]:=i;
  writeln('adrOfDefiner[',numInAlphabet,']=',adrOfDefiner[numInAlphabet]);
  end;
 if (progText[i]=';') and (underline=true) then   underline:=false;  
 
 if (underline=false) and (integer(progText[i])>=97) and (integer(progText[i])<=122) then
  begin
  boolFunc:=true;
  writeln('boolFunc=',boolFunc);
  writeln('Func=',progText[i]);
  
  end;
if (boolFunc=true) and (progText[i]=';') then boolFunc:=false;     
     
i:=i+1;
 goto _str_begining;
 _str_end:	
 
  for fn_index:= 1 to 10 do
   begin
    writeln('funcNames[',fn_index,']=',funcNames[fn_index]);
   end; 
 
END.

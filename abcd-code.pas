// программа записывается в одну строку str[]
// добавим в блок var массив str[]
var 
  str:string[100];
// имена переменных обозначаются строчными буквами 
// массив переенных a,b,c,d
 arr[]: array[0..3] of integer;
// аккумулятор для строчной буквы 
  lowercase_letter_acc:char;
  // аккумулятор для одноразрядной цифры
  digit_acc:integer;
 // индексная переменная
 i: integer;
 // бинарные арифетические операторы + и -
 binary_operator: char;
 // флаг, обозначающий переход к новой переменной
 flag: boolean;
 begin
 // пусть a=1  b=2. Сумма двух чисел загружается в переменную a 
  str:= ' a=1; b=2; a=a+b; #a  ';
 // Инициализация оператора   
 bin_operator:='+';
 // строка str[] обрабатывается в цикле while посимвольно
  while i<length(str) do
    begin
   // если встетилась одна из переменных a,b,c,d
   // то загружаем имя переменной в аккумулятор lowercase_letter_acc
   // оператор Ord преобразует букву в её числовой код из ascii-таблицы
   if flag=false then if Ord(str[i]) >=97 then if Ord(str[i]) <= 100 then 
    begin
      flag := true;      
      char_acc:=str[i];
     end;

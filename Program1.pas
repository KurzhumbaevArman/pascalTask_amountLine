const 
  SzM = 26; 
  SzN = 26; 
 
type Matrix = array [1..SzM,1..SzN] of real;
procedure FillMatrixByRandom(var a: Matrix; m,n: integer); // Заполнение матрицы случайными числами
begin
  for var i:=1 to M do 
  for var j:=1 to N do 
    a[i,j] := sin(i+j);
end;
 
procedure PrintMatrix(const a: Matrix; m,n: integer); // Вывод матрицы
begin
  for var i:=1 to M do 
  begin
    for var j:=1 to N do 
      write(a[i,j]:10:3);
    writeln;  
  end;
end;
var 
  a: Matrix;
  sums: array [1..SzM] of real;
 
begin
  var m := 10;
  var n := 10;
  FillMatrixByRandom(a,m,n);
 
  writeln('Матрица исходная: ');
  PrintMatrix(a,m,n);
 
 
  var
  sum: real;
  for var i:=1 to m do
  begin
    sum := 0;
    for var j:=1 to n do
      sum += abs(a[i,j]);
    sums[i] := sum;
  end;
 
 
  var
    amount : real;
  var 
    index : integer;
  for var i:=1 to m do
  begin
    
    if sums[i] > amount then
    begin
    amount :=sums[i];
    index := i;
    end;
  end;
    writeln('Индекс строки с самой большой суммой (',amount :4:3,') = ',index);
    
    //Вектор a[i,7]
    write('Вектор: ');
    for  var i:=1 to m do
      write(a[index,i]:10:4);
      
      
     var  b:array[1..26] of real;
     var  r:real;
     var  
          k:integer;
      k:=2;
      
      for var i:= 1 to m do
        b[i] := a[index,i];
      
      for var i:=1 to k do
      begin 
      for var j:=1 to m do
        if j=1 then r:=b[j] else b[j-1]:=b[j];
        b[n]:=r;
        end;
        
        writeln('Вектор со смещением: ');
    for  var i:=1 to m do
      write(b[i]:10:4);
      
      
end.

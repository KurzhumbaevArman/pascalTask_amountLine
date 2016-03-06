const 
  SzM = 26; 
  SzN = 26; 
 
type Matrix = array [1..SzM,1..SzN] of integer;
procedure FillMatrixByRandom(var a: Matrix; m,n: integer); // Заполнение случайными
begin
  for var i:=1 to M do 
  for var j:=1 to N do 
    a[i,j] := Random(10);
end;
 
procedure PrintMatrix(const a: Matrix; m,n: integer); // Вывод матрицы
begin
  for var i:=1 to M do 
  begin
    for var j:=1 to N do 
      write(a[i,j]:4);
    writeln;  
  end;
end;
var 
  a: Matrix;
  sums: array [1..SzM] of integer;
 
begin
  var m := 7;
  var n := 7;
  FillMatrixByRandom(a,m,n);
 
  writeln('Исходная матрица: ');
  PrintMatrix(a,m,n);
 
  for var i:=1 to m do
  begin
    var sum := 0;
    for var j:=1 to n do
      sum += a[i,j];
    sums[i] := sum;    
  end;
 
  writeln('Суммы в строках: ');
  for var i:=1 to m do
    write(sums[i]:4);
end.
program arrays;
type
  list = array [1..10] of integer;
var
  max, min, i :integer;
  mylist : list;
function listmin(alist : list) : integer;
  var min : integer;
  begin
    min := alist[1];
    for i := 2 to 10 do
      if alist[i] < min then min := alist[i];
    listmin := min;
  end;

begin
  randomize;
  for i := 1 to 10 do
    mylist[i] := random(50);

  max := mylist[1];
  min := mylist[1];

  for i := 2 to 10 do
  begin
    if mylist[i] > max then max := mylist[i];

    writeln(mylist[i], ' ');
  end;
  writeln(' ');
  writeln('max = ', max);
  writeln('min = ', listmin(mylist) );

  readln(i);
end.
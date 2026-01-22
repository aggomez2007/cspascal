program cspreview;
const
  size = 20;
type
  list = array[0..size] of integer;

var
  list1, list2 : list;
  i, j, n : integer;

begin
  Randomize;
  for i := 1 to size do
    list1[i] := random(50);
  list1[0] := size;
  for i := 1 to size do
  writeln('list1[', i, '] = ', list1[i]);

  readln(j);
  n := 0;
  for i := 1 to size do
    if list1[i] = j then
      n := n + i ;
  writeln(n);


  readln;

end.
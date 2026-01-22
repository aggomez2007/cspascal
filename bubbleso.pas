program blort;
uses csp;
var
  mylist : list;
  i, j, temp : integer;
begin
  randomlist(mylist, 10);
  writeln('UNSORTED');
  printlist(mylist);
  readln;
  bubblesort(mylist);
  writeln('SORTED');
  printlist(mylist);
  readln;
end.
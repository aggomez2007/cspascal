program randlist;
uses csp;
var
  mylist : list;
  i, n : integer;
begin
  randomize;
  writeln('How mamy elements: ');
  n := 10;

  if n > size then n := size;


  for i := 1 to n do
    append(mylist, random(5));

  printlist(mylist);
  if isinlist(mylist, 3) then writeln('3 yes')
  else writeln('3 no');
  readln;

end.
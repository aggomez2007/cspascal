program listtest;
uses csp;
var
  mylist : list;
  i : integer;
begin
  writeln('give number: ');
  readln(i);
  append(mylist, i);

  writeln('first eelement is: ', mylist[1]);

  readln(i);
end.
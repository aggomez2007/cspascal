program test;
uses csp;
var
  s : string;
begin
  writeln('add(1, 2, 3) = ', add3(1, 2, 3));
  writeln('add3(4, 5, 6) = ', add3(4, 5, 6));
  writeln('pow(2,2) = ', pow(2,2));
  writeln('pow(2,2) = ', pow(3,3));
  writeln('pow(5,1) = ', pow (5,1));
  readln(s);
end.
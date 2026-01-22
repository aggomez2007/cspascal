program conditionals;
var
  a, b, i : integer;
begin
  randomize;
  b := random(10);
  writeln('3 guesses');

  repeat
  begin
    write('guess the number 0-10:');
2    readln(a);
    if a > b then writeln('too high')
    else if a < b then writeln('too low')
    else writeln('correct');
  end;
 until a = b;
  writeln('thx');
  readln(a);
end.




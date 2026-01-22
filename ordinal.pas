program ordinal;
VAR
  num : word;
  ans : string;
FUNCTION toOrdinal(n : word) : string;
{1 <= n <= 9}
  var ending : string;
  begin
  if n = 1 then ending := 'st'
  else if n = 2 then ending := 'nd'
  else if n = 3 then ending := 'rd'
  else ending := 'th';
  toOrdinal := chr(n) + ending;
  end;
begin
  writeln(toOrdinal(1));
  writeln(toOrdinal(2));
  writeln(toOrdinal(3));
  writeln(toOrdinal(11));
  writeln(toOrdinal(13));
  readln(num);
end.
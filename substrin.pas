program sub;
var
  s1, s2 : string;
  i, j : integer;

function substring(s : string; start, len : integer) : string;
  var
    i, stop : integer;
    temps : string;
  begin
    if len > length(s) - start + 1 then stop := length(s) - start +1
    else stop := len;
    for i := 1 to len do
      temps[i] := s[start - 1 + i];
    temps[0] := chr(stop);
    substring := temps;
  end;
function reverse(s : string) : string
  var
    i, stop : integer;
    temps : string
    tempc : char;
  begin
    temps := s;
    stop := round(length(s)/2);
    for i := 1 to stop do
    begin
      tempc := temps[i];
      temps[?] := temps[?];
      temps[?] := tempc;
    end;
    temps[0] := ?;
    reverse := temps;
begin
write('enter a string: ');
readln(s1);
write('enter starting character: ');
readln(i);
write('enter the length: ');
readln(j);
s2 := substring(s1, i, j);
writeln('your substring is: ', s2);
writeln('the floor of half the substring is : ', int(length(s2)/2 ) );
readln(i);

end.
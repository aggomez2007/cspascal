program binary;
var
  i : integer;
  w : word;
function inttobinary(n : integer) : string;
  var
    result : string;
  begin
    if n = 0 then result := '0'
    else
    begin
      result := '';
      while n > 0 do
        begin
        result := chr(ord('0') + (n mod 2)) + result;
        n := n div 2;
        end;
    end;
    inttobinary := result;
  end;

function strtoint(s : string) : word;
  var
    w, i : word;
  begin
    w := 0;
    i := 32768;
begin
  i := 1;
  w := 1;
  while i <> 0 do
  begin
    writeln(i, ' = ', inttobinary(w));
    i := i + 1;
  end;
  readln;

  while w > 0 do
  begin
    writeln(w, ' = ', inttobinary(i));
    w := 2*w;
  end;
  writeln(w);
  readln;
end.
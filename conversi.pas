program conversion;
var
  l : char;
  i,x : integer;
  str : string;
function ctoi(c : char) : integer;
begin
  ctoi := ord(c) - 48;
end;

function atoi(s : string) : integer;
var
  i, val : integer;
  function isdigit(c : char) : boolean;
  begin
    isdigit := (c >= '0') and (c <= '9');
  end;
begin
  i := 1;
  while not isdigit(s[i]) and (i <= length(s)) do
    i := i + 1;
  val := 0;
  while isdigit(s[i]) and not (i > length(s)) do
  begin
    val := ctoi(s[i]) + 10*val;
    i := i + 1;
  end;
  atoi := val;
end;

function itoa(val : integer) : string;
  var
    s : string;
  begin
  s := '';
    repeat
    s := chr(val mod 10 + 48) + s;
    val := (val div 10);
    until
    val = 0;
  itoa := s;
  end;
begin
  writeln('type a digit: ');
  readln(x);
  str := itoa(x);
  writeln(str);
  readln;
end.
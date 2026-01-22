program booleans;
uses crt;
var
  a, b : integer;
  p, q : boolean;
  c    : char;
begin
    p := 2+2=4;
    q := 5+5<>10;
    if p or q then writeln('if')
    else writeln('else');

    c:= 'b';
    if c = 'a' then writeln('if')
    else writeln('else');

    a := 1;

    repeat
      writeln('repeaing ',a);
      a := a+1;
      if keypressed then
      begin
        c := readkey;
        a := 1;
      end;
    until c = 'q';
    writeln('out of loop');

    read(c);
end.
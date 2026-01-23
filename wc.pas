program wc;
uses copyunit;
var
  c : character;
  nc, nl, nw : integer;
  inword : boolean;
begin
  nc := 0;
  nl := 0;
  nw := 0;
  inword := false;
  while (getc(c) <> endfile) do
  begin
    nc := nc + 1;
    if c = NEWLINE then nl := nl + 1;
    if (c = BLANK) or (c = TAB) or (c = NEWLINE) then inword := false
    else if inword = false then
    begin
      inword := true;
      nw := nw + 1;
    end;
  end;
  if(nc <> 0) and (nl = 0) then nl := 1;
  writeln('number of characters: ', nc);
  writeln('number of lines:      ', nl);
  writeln('number of words:      ', nw);
end.

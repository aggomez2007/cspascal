program ageclassifier(Input, Output);
var
age : integer;
class : char;
function classifyage(age : integer) :char;
var
c, a, t : char;
  begin
    if 12 >= age then class := c
    else if age >= 13 then class := t
    else if age >= 20 then class := a;
  end;
procedure printclass(class:char);
  begin
  if class = 'c' then writeln('you are a child')
  else if class = 't' then writeln('you are a teenager')
  else if class = 'a' then writeln('you are a teenager')
  end;
begin
write('enter your age: ');
read(age);
classifyage(age);
printclass(class);
readln(age);
end.
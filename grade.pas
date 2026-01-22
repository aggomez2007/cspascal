program grade;
var
numGrade : integer;
letGrade : char;

function letterify (numGrade:integer): char;
  begin
    if 0 > numgrade then write('Invalid Grade')
    else if Numgrade > 100 then letterify := 'i'
    else if numgrade < 60 then letterify := 'f'
    else if numgrade < 70 then letterify := 'd'
    else if numgrade < 80 then letterify := 'c'
    else if numgrade < 90 then letterify := 'b'
    else if numgrade <= 100 then letterify := 'a';
  end;

procedure printgrade (letGrade:char);
  begin
    if letgrade = 'i' then writeln('invalid grade')
    else if letgrade = 'f' then write('You got an F')
    else if letgrade = 'd' then write('You got a D')
    else if letgrade = 'c' then write('You got a C')
    else if letgrade = 'b' then write('You got a B')
    else if letgrade = 'a' then write('You got an A');
  end;

begin
repeat
write('Enter your number grade: ');
read(numGrade);
letGrade := letterify(numgrade);
printgrade(letGrade);
until letgrade <> 'i';

Read(numGrade);
end.
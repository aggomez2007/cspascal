program lentest;
uses csp;
var s : string;
begin
  writeln('len(hello) = ', len('hello'));
  writeln('len() = ', len(''));
  writeln('len(alfredo) = ', len('alfredo'));
  writeln('len(alcibiades) = ', len('alcibiades'));
  writeln('len(abcdefg) = ', len('abcdefg'));
  readln(s);
end.
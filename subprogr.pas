PROGRAM subprogram;
VAR
  a, b, c : integer;
PROCEDURE print3(x : integer);
Begin
     writeln('1st: ', x);
     writeln('2nd: ', x);
     writeln('3rd: ', x);
END;

FUNCTION  domath(a, b : INTEGER) : INTEGER ;
BEGIN
  domath := 2*a - b;
END;

BEGIN;
  a := 10;
  b := 2*a;
  c := 2*b+a;
  writeln(c);

  a :=2* ABS(c) + 1;
  writeln(a);

  Print3(b);

  c := domath(a, b);

  print3(a+ c);
  readln(a);
END.
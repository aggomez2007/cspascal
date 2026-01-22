PROGRAM circles;
USES graph, crt;
VAR
  x, y, gm, gd, i, c, r : INTEGER;
  j : char;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');
  setcolor(red);
  x:=0;
  y:=0;
  circle(150, 150, 50);
   repeat
   if keypressed then
   begin
   j := readkey;
    begin
    x := random(640);
    y := random(480);
    r := random(50);
    c := random(16);
    setcolor(c);
    circle(x, y, r);
    end;

  read(x);
  CloseGraph;
END.

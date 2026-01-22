PROGRAM graphics;
USES Graph;
VAR
  gd, gm : integer;
begin
  gd := Detect; {detect is a function with 0 inputs, no parentheses }
  initgraph(gd, gm, 'C:\TPWDB\BGI');


  setcolor(4);
  rectangle(125, 150, 500, 475);

  setcolor(3);
  line(75, 150, 312, 5);
  line(75, 150, 550, 150);
  line(550, 150, 312, 5);

  setcolor(5);
  rectangle(250, 350, 350, 475);
  circle(340, 412, 5);
  rectangle(187, 200, 250, 300);
  rectangle(425, 200, 362, 300);
  line(218, 200, 218, 300);
  line(187, 250, 250, 250);
  line(393, 200, 393, 300);
  line(425, 250, 362, 250);
  


  readln(gd);
  closegraph; {closegraph is a procedure with no inputs, no parentheses}
end.
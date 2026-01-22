PROGRAM GEO;
uses graph, crt;
var
  gm, gd, line : integer;
  key : char;
begin
  gd := detect;
  initgraph(gd, gm, 'c:\tpwdb\bgi');
  key := readkey;
  line := 1;
  setbkcolor(0);
  while key <> 'q' do
  begin
    outtextXY(0, line, 'you typed ' + key);
    key := readkey;
    cleardevice;
    drawframe;
    line := line + textheight('you typed ' + key);
  end;
  closegraph;
end.
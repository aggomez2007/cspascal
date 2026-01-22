Program Graphics;
uses Graph, Crt;
const
  maxx = 640;
  maxy = 480;
type
  triangle = array[1..4] of pointtype;
var
  Gd, Gm: Integer;
  c: Char;
  x, y, i, p: Integer;
  color, mycolor : word;
  mytri : triangle;
  mypt : pointtype;
begin
  Gd := Detect;
  InitGraph(Gd, Gm, 'C:\DOS\TP7\BGI');
  SetColor(Red);
  color := getmaxcolor;
  randomize;
  repeat
    p := random(100);
    for i := 1 to 3 do
    begin
      if p < 30 then
      begin
        mytri[i].X := random(maxx div 2);
        mytri[i].Y := random(maxy div 2);
      end
      else if p < 40 then
      begin
        mytri[i].X := random(maxx div 2) + maxx div 2;
        mytri[i].Y := random(maxy div 2);
      end
      else if p < 90 then
      begin
        mytri[i].X := random(maxx div 2);
        mytri[i].Y := random(maxy div 2) + maxy div 2;
      end
      else
      begin
        mytri[i].x := random(maxx div 2) + maxx div 2;
        mytri[i].y := random(maxy div 2) + maxy div 2;
        end;
    end;
    mytri[4] := mytri[1];
    mycolor := rAndom(color);
    setfillstyle(solidfill, mycolor);
    fillpoly(4, mytri);
    putpixel(random(640), random(480), random(color));
  until keypressed;
  x := 0;
  y := 0;
  Repeat
    if KeyPressed then
    begin
      c := ReadKey;
      ClearDevice;
      CASE c of
       'w': y := y - 5;
       's': y := y + 5;
       'a': x := x - 5;
       'd': x := x + 5;
       end;
      Circle(x + 150, y + 150, 50);
    end;
  Until c = 'q';
  CloseGraph;
end.
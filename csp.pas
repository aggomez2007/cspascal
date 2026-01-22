UNIT csp;

INTERFACE

{list data type}
CONST
  size = 255;

TYPE
  list = array[0..size] of integer;


{string functions}
function len(s : string) : integer;
function concat(s1, s2 : string) : string;
function reverse(s : string) : string;
function prefix(s : string; n : integer) : string;
function substring(s : string; start, n : integer) : string;

{list functions/procedures}
function length(alist : list) : integer;
function sum(alist : list) : integer;
function isinlist(alist : list; val : integer) : boolean;
function linearsearch(alist : list ; value : integer) : boolean;
function binarysearch(alist :list; value : integer) : boolean;
function average(alist : list) : real;
function median(alist : list) : real;
function smallest(alist : list) : integer;
function isincreasing(alist : list) : boolean;
procedure randomlist(var alist : list; n : integer);
procedure bubblesort(var alist : list);
procedure selectionsort(var alist : list);
procedure insertionsort(var alist : list);
procedure swap(var a, b : integer);
procedure insert(var alist : list; i, value : integer);
procedure append(var alist : list; value : integer);
procedure remove(var alist : list; i : integer);
procedure printlist(alist : list);


IMPLEMENTATION

{STRING FUNCTION IMPLEMENTATION}

function len(s : string) : integer;
  begin
    len := ord(s[0]);
  end;

function concat(s1, s2 : string) : string;
  var
  i : integer;
  temps : string;
begin
  for i := 1 to len(s1) do
    temps[i] := s1[i];
    temps[0] := chr(len(s1) + len(s2));
  for i := 1 to len(s2) do
    temps[len(s1) + i] := s2[i];
    temps[i] := s2[i];
  concat := temps;
end;

function reverse(s : string) : string;
var
  temps : string;
  i : integer;
begin
  for i := 1 to len(s) do
    temps[i] := s[len(s) - i+ 1];
  temps[0] := s[0];
  reverse := temps;
end;

function  prefix(s : string; n : integer) : string;
var
  i : integer;
  temps : string;
begin
  if n > ord(s[0]) then n := ord(s[0]);
  for i := 1 to n do
    temps[i] := s[i];
  temps[0] := chr(n);
  prefix := temps;
end;

function substring(s : string; start, n : integer) : string;
var
  temps: string;
  i, diff : integer;
begin
  diff := n - start + 1;
  for i := 1 to diff do
      temps[i] := s[start + i - 1];
  temps[0] := chr(diff);
  substring := temps;
end;

{LIST FUNCTIONS/PROCEDURES IMPLEMENTATION}
function length(alist : list) : integer;
begin
  length := alist[0];
end;

function sum(alist : list) : integer;
var i, total : integer;
begin
  total := 0;
  for i := 1 to length(alist) do
    total := total + alist[i];
    sum := total;
end;

function average(alist : list) : real;
begin
  average := sum(alist) / length(alist);
end;


function isincreasing(alist : list) : boolean;
var
  i : integer;
  inc : boolean;
begin
  for i := 1 to length(alist)-1 do
    if alist[i] <= alist[i + 1] then
    inc := true
    else inc := false;
  isincreasing := inc;
end;


function median(alist : list) : real;
var
  med, sum : real;
begin
  {check if length is even or odd}
  if length(alist) MOD 2 = 0 then
  {if even, average middle two}
  begin
    sum := (alist[length(alist) div 2] + alist[length(alist) div 2 + 1]);
    med := sum / 2;
  end

  {if odd, find middle element}
  else med := alist[(length(alist) div 2)+1];
  {return result}
  median := med;
end;

function smallest(alist : list) : integer;
var
  i, min : integer;
begin
  min := alist[1];
  for i := 2 to length(alist) do
    if alist[i] < min then min := alist[i];
  smallest := min;
end;



function isinlist(alist : list; val : integer) : boolean;
var
  i : integer;
  found : boolean;
begin
  found := false;
  for i := 1 to length(alist) do
  begin
    if alist[i] = val then
    begin
    found := true;
    break;
    end;
  end;
  isinlist := found;
end;


function linearsearch(alist : list ; value : integer) : boolean;
var
  i, count : integer;
  found : boolean;
begin
  found := false;
  count := 0;
  for i := 1 to length(alist) do
  begin
    count := count + 1;
    if alist[i] = value then
    begin
      found := true;
      break;
    end;
  end;
  writeln('Number of searches : ', count);
  linearsearch := found;
end;

function binarysearch(alist : list ; value : integer) : boolean;
var
  i, l, r, mid, count : integer;
   found : boolean;
begin
  found := false;
  l := 1;
  r := length(alist);
  repeat
    count := count + 1;
    mid := (l + r) div 2;
    if alist[mid] = value then
    begin
      found := true;
      break;
    end
    else if alist[mid] <  value then l := mid + 1
    else r := mid - 1;
  until l > r;
  writeln('Number of Searches: ', count);
  binarysearch := found;
end;

procedure randomlist(var alist : list; n : integer);
var
  i : integer;
begin
  randomize;
  for i := 1 to n do
    append(alist, random(100));
end;

procedure bubblesort(var alist : list);
var
  i, j, temp : integer;
  changed : boolean;
BEGIN
  for i := 1 to length(alist) - 1 do
  BEGIN
    changed := false;
    BEGIN
      for j := 1 to length(alist) - i  do
      BEGIN
        if alist[j] > alist[j+1] then
        BEGIN
          temp := alist[j];
          alist[j] := alist[j+1];
          alist[j+1] := temp;
          changed := true;
        END;
      END;
      if changed = false then break;
    END;
  END;
END;

procedure selectionsort(var alist : list);
var
  i, j, min : integer;
begin
  for i := 1 to length(alist) - 1 do
  begin
  min := i;
  for j := i + 1 to length(alist) do
  if alist[j] < alist[min] then min := j;
  swap(alist[i], alist[min]);
  end;
end;

{sort by taking next item and swapping it into place on the left}
procedure insertionsort(var alist : list);
var
  i, j : integer;
begin
  {loop 2 through length and find where to insert that element}
  {loop downwards and swap until the element is in the right spot}

  {check if alist[j] is less than alist[j-1], then swap}
  if alist[j] < alist[j-1] then swap(alist[j], alist [j-1])
  {if not,  break}
  else break;
end;

procedure swap(var a, b, : integer);
var
  temp : integer;
begin
  temp := a;
  a := b;
  b := temp;
end;

procedure insert(var alist : list; i, value : integer);
var
index : integer;
begin
  if i > alist[0] then
    i := alist[0] + 1;
  if i > length(alist) then append(alist,value)
  else if (i > 0) and (alist[0] < size) then
  begin
    alist[0] := length(alist) + 1;
    for index := length(alist) downto  i + 1 do
      alist[index] := alist[index-1];
    alist[i] := value;
  end;
end;


procedure append(var alist : list; value : integer);
begin
  if alist[0] < size then
  begin
    alist[0] := alist[0] + 1;
    alist[alist[0]] := value;
  end;
end;

procedure remove(var alist : list; i : integer);
var
  index : integer;
begin
  if (i <= alist[0]) and (i > 0) then
  BEGIN
    alist[0] := length(alist) - 1;
    for index := i to length(alist)  do
      alist[index] := alist[index+1];
  END;

end;







procedure printlist(alist : list);
var
  i : integer;
begin
  for i := 1 to length(alist) do
    writeln('Element at index ', i, ' = ', alist[i]);
end;



END.
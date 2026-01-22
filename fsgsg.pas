program testarray

const
  max = 8;

type
  list : array [1..max] of integer;

var
  arr : list;
  i : integer;

begin
  for i := 1 to max do read(arr[i]);

  for i:= 1 to max do write(arr[i]), ' ');
  read(i);
end.
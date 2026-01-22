program arraypractice;

const
  maxsize = 20;

type
  list = array[1..maxsize] of integer;
var
  Heights : list;
  i, numPlayers, sum : integer;
  average, conversion, feet, inchesdec, inches : real;

begin
  write('How many players on the team: ');
  readln(numplayers);

  for i := 1 to numplayers do
    begin
    write('What is the height of player ', i,' in inches: ');
    read(heights[i]);
    end;

    sum := 0;
  for i := 1 to numplayers do
    begin
    sum := sum + heights[i];
    average := sum / numplayers;
    end;

  conversion := average / 12;
  if conversion > 1 then
  begin
  feet := round(conversion);
  inchesDec := feet - conversion;
  inches := inchesDec * 12;
  end;
  writeln('The average height of the team is', average,'inches, or', conversion,' feet');
  writeln( feet, inches);
  read(i);

end.
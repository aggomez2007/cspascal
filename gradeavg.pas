program gradeavg;

const
maxlist = 20;

type
list = array[1..maxlist] of real;

var
i, assignments: integer;
gradelist : list;
average, sum : real;
letteraverage : char;
article : string;



begin
  write('How many assignments do you want to enter: ');
  read(assignments);

  for i := 1 to assignments do
    begin;
    write('What grade did you get on assignment ',i ,':');
    read(gradelist[i]);
    end;

  sum := 0;
  for i := 1 to assignments do
    begin;
    sum := sum + gradelist[i];
    average := sum/assignments;
    end;

  if average >= 90 then letteraverage := 'A'
  else if average >= 80 then letteraverage := 'B'
  else if average >= 70 then letteraverage := 'C'
  else letteraverage := 'F';

  if (letteraverage = 'A') OR (letteraverage = 'F') then article := 'an'
  else article := 'a';
  writeln('Your average grade is ', average,' percent, that is ',article, ' ', letteraverage);
  read(i);
  End.

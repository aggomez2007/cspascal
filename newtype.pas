program newtype;
const
  numrecs = 2;
var
  name : array[1..numrecs] of string;
  age : array[1..numrecs] of integer;
  gpa : array[1..numrecs] of real;
  i :integer;

begin
  for i := 1 to numrecs do
  begin
  write('What is the name of student ', i, '? ') ;
  readln(name[i]);

  write('What is the age of student ', i, '? ');
  readln(age[i]);

  write('What is the gpa of student ', i, '?');
  readln(gpa[i]);
  end;

  writeln('The name of the 2nd student is ', name[2]);
  writeln('The age of the 1st student is ', age[1]);
  writeln('The average GPA of both students is ', ((gpa[1] + gpa[2]) / 2));

  readln;
end.
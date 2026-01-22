program studentrecord;
type
  student = record
  name : string;
  age : integer;
  gpa : real;
  end;
var
  students: array[1..2] of student;
  i : integer;

procedure printstudent(studrec : student);

  with studrec do
  begin
    writeln('student name ; ', name);
    writeln('student age : ', age);
    writeln('student GPA : ', gpa:1:2);
  end;

begin
  for i := 1 to 2 do
  begin
    with students[i] do
    begin
      write('What is the name of student ', i, '? ') ;
      readln(name);

      write('What is the age of student ', i, '? ');
      readln(age);

      write('What is the gpa of student ', i, '?');
      readln(gpa);
    end;
  end;



  printstudent(students[1]);
  printstudent(students[2]);
  writeln('the name of student 2 is ', students[2].name);
  writeln('the age of student 1 is ', students[1].age);
  writeln('the average gpa is ', (students[1].gpa + students[2].gpa) / 2:1:2);
  readln;


end.
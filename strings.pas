program strings;
var
  name, msg : string;
  len : integer;
  money : real;
begin
  {ask user for name, age and how much money they have}
  {write out results with a nice message}
  write('What is your name?  ');
  readln(name);
  msg := 'Hello ' + name + '.';
  len := length(msg);
  writeln('your msg is ', len,' long');
  msg := msg + 'it is nice to meet you.';
  len := length(msg);
  writeln('your messgae is ', len,' long');
  writeln(msg);
  readln( name);
end.

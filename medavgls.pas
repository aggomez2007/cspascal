program findmedian;
uses csp;
var
  mylist : list;
  n : integer;





begin
  {ask how many random items}
  repeat
  writeln('How many random items for your list: ');
  readln(n);
   {check if n is good, reask if not}
  if (n <= 0) or (n > size) then
    writeln('N should be positive and less than ', SIZE);
  until (n > 0) and (n <= size);
 {add n random items to list}
 randomlist(mylist, n);
 printlist(mylist);
 writeln('List is increasing = ', isincreasing(mylist));
 writeln('Average of mylist = ', average(mylist):10:3);

 {sort list and print}
 bubblesort(mylist);
 printlist(mylist);
 writeln('List is increasing = ', isincreasing(mylist));
 writeln('the median is: ', median(mylist):10:3);
 readln;
end.
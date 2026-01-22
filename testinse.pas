PROGRAM testlist;
USES csp;
VAR
  myList : List;
BEGIN
  Append(myList, 5);
  Append(myList, 5);
  Append(myList, 6);
  append(mylist, 3);
  printlist(mylist);
  readln;
END.
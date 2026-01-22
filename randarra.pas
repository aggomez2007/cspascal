PROGRAM getmoney(input, output);
{create program asking user for size # of dollars}
{sumup values and print}
const
size := 10;
type
list = array[1..size] of integer
var
moneylist : list
i : integer
sum : integer
begin

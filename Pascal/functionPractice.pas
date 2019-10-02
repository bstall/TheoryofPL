program functionPractice;
var
    x, y, ret : integer;
(*function to return maximum between two numbers*)
function maximum(n1, n2: integer): integer;
var
   (*variable local to function*)
   result: integer;
(*function body*)
begin
    (*compares the two numbers*)
   if (n1 > n2) then
      result := n1
   
   else
      result := n2;
   maximum := result;
end;

begin
   x := 3;
   y := 10000;
   (* calling a function to get max value *)
   ret := maximum(x,y);
   
   writeln( 'Maximum value is : ', ret );
end.
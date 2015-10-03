% Find the base b logarithm of the input decimal number x. Express the output as a decimal number. The first argument is the number x, and the second argument is the base b.
% 
% Examples
% 
%  logb(1024,2)    ---> 10
%  logb(25,5)      --->  2
%  logb(100000,10) --->  5

function y = logb(x,b)
y=0;
while(x>=b)
x=x/b;
y=y+1;
end
end
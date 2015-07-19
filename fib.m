% Calculate the nth Fibonacci number.
% 
% Given n, return f where f = fib(n) and f(1) = 1, f(2) = 1, f(3) = 2, ...
% 
% Examples:
% 
%  Input  n = 5
%  Output f is 5
%  Input  n = 7
%  Output f is 13


function f = fib(n)
f=round((((sqrt(5)+1)/2)^n - ((1-sqrt(5))/2)^n)/sqrt(5));
end

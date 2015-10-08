% Inspired by Problem 2056 created by Ted.
% 
% In recreational number theory, a narcissistic number is a number that is the sum of its own digits 
% each raised to the power of the number of digits (Wikipedia).
% 
% For example :
% 
% 153 = 1^3+5^3+3^3 = 1 + 125 + 27 = 153
% 
% 1634 = 1^4+6^4+3^4+4^4 = 1 + 1296 + 81 + 256 = 1634 are narcissistic numbers.
% 
% Simply return 1 (true) if a supplied number is narcissistic or 0 (false) if not.
% 
% The tips num2str(666)-'0' = [6 6 6] should be useful.
function y = isnarcissistic(x)
tx=num2str(x);
lx=length(tx);
y=isequal(sum((tx-'0').^lx),x);
end
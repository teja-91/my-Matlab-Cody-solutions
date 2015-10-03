% If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
% 
% Find the sum of all the multiples of 3 or 5 below the input value.
% 
% Thank you to Project Euler Problem 1

function y = euler001(x)
  x3=3:3:x;
  x3(x3==x)=[];
  x5=5:5:x;
  x5(x5==x)=[];
  x5(mod(x5,3)==0)=[];
  y =sum([x3 x5]);
end
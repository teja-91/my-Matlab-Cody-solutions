% A polite number is an integer that sums of two or more consecutive positive integers.
% Politeness of a positive integer is a number of nontrivial ways to write n as a sum of two or more consecutive integers.
% 
% For example 9 = 4+5 = 2+3+4 and politeness of 9 is 2.
% 
% Given N return politeness of N.

function P = politeness(N)
k=factor(N);
k=k(k>2);
cnt=histc(k,unique(k))
if(isempty(cnt))
    P=0;
else
    g=cumprod(cnt+1)
  P=g(end)-1;
end
end

%Author: Raviteja
%Date created: 21/7/2015
% Given an amount of currency, return a vector of this form:
% 
%  [100 50 20 10 5 2 1 0.5 0.25 0.1 0.05 0.01]
% Example:
% 
%  Input a = 257.68
%  Output b is [2 1 0 0 1 1 0 1 0 1 1 3]
% Always use bigger bills/coins if possible.

function b = makingChange(k)
a=[100 50 20 10 5 2 1 0.5 0.25 0.1 0.05 0.01];
k=k+(1e-3);% added 1e-3 because of the rounding errors
for i=1:length(a)
rem(i)=floor(k/a(i));
k=k-(rem(i)*a(i));
end
b=rem;
end
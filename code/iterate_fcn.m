% Given a handle fh to a function which takes a scalar input and returns a scalar output and an integer n >= 1, return a handle fh2 to a function which applies the given function n times.
% 
% Examples:
% 
%  >> addOne = @(x)x+1;
%  >> addTen = iterate_fcn(addOne, 10);
%  >> addTen(3)
%  ans =
%      13
%  >> squarer = @(a) a^2;
%  >> fh2 = iterate_fcn(squarer, 3);
%  >> fh2(3)
%  ans =
%          6561
%  % Golden Ratio
%  >> fh = @(y)sqrt(y+1);
%  >> fh2 = iterate_fcn(fh,30);
%  >> fh2(1)
%  ans =
%      1.6180

function fh2 = iterate_fcn(fh, n)
function f=repeat(x)
for i=1:n
x=fh(x);
end
f=x;
end

fh2=@repeat;
end
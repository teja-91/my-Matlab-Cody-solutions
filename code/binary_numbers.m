%date : 26/7/2015
% Problem 34. Binary numbers
% Given a positive, scalar integer n, create a (2^n)-by-n double-precision matrix containing the binary numbers from 0 through 2^n-1. Each row of the matrix represents one binary number. For example, if n = 3, then your code could return
% 
% >> binary_numbers(3)
% 
% ans =
% 
%      1     1     1
%      0     0     0
%      0     1     1
%      0     1     0
%      0     0     1
%      1     0     0
%      1     1     0
%      1     0     1
% The order of the rows does not matter.


function A = binary_numbers(n)
for i=0:2^n-1
    l=i;
    for j=n:-1:1
        k=mod(l,2);
        A(i+1,j)=double(k);
        l=floor(l/2);
    end
end
end

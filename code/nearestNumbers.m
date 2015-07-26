% Problem 29. Nearest Numbers
% Given a row vector of numbers, find the indices of the two nearest numbers.
% 
% Examples:
% 
%  [index1 index2] = nearestNumbers([2 5 3 10 0 -3.1])
%  index1 =
%       1
%  index2 =
%       3
%  [index1 index2] = nearestNumbers([-40 14 22 17])
%  index1 =
%       2
%  index2 =
%       4
% Notes
% 
% The indices should be returned in order such that index2 > index1.
% There will always be a unique solution.


function [index1,index2] = nearestNumbers(A)
for i=1:length(A)
k(i,:)=abs(A-A(i));
k(i,i)=NaN;;
end
[m n]=ind2sub([length(A) length(A)],find(k==min(min(k))))
index1=n(1)
index2=n(2)
end
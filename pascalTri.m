%Given an integer n >= 0, generate the length n+1 row vector representing the n-th row of Pascal's Triangle.
%
%Examples:
%
% pascalTri(0)
% ans =
%     1
% pascalTri(1)
% ans =
%     1     1
%pascalTri(2)
% ans =
%     1     2     1


function y = pascalTri(n)
for i=0:n
y(i+1)=nchoosek(n,i);
 end
end

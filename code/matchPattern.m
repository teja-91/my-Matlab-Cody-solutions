% Given a matrix, m-by-n, find all the rows that have the same "increase, decrease, or stay same" pattern going across the columns as the first row does. Do not list the row as a match to itself.
% 
% Example:
% 
%  Input  a = [1 2 3 0
%              5 6 7 9
%              2 7 8 7]
%  Output b is 3
% since the third column follows the increase-increase-decrease pattern used in vector a.


function b = matchPattern(a)

k=diff(a');
k(k>0)=1;
k(k<0)=-1;
p=1;
l=size(a);
for i=2:l(1)
    if(k(:,i)==k(:,1))
        b(p)=i;
        p=p+1;
    end
end
end
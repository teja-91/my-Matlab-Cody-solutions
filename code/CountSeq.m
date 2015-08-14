% Given a vector x, find the "counting sequence" y.
% 
% A counting sequence is formed by "counting" the entries in a given sequence.
% 
% For example, the sequence
% 
%  x = 5, 5, 2, 1, 1, 1, 1, 3
% can be read as
% 
%  Two 5's, one 2, four 1's, one 3
% which translates to
% 
%  y = 2, 5, 1, 2, 4, 1, 1, 3
% So y is the counting sequence for x.
% 
% For this problem, all elements in the sequences x and y will be in the range from 1 to 9.

function y = CountSeq(x)
d=[1 diff(x)];
id=1;
y=zeros(1,sum(d~=0)*2);
y(2:2:end)=x(find(abs(d)));
for i=1:length(x)
    if(x(i)~=y(id+1))
        id=id+2;
    end
    y(id)=y(id)+1;
end
end
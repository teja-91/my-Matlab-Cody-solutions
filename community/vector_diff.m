% Given two numeric inputs a and b, return a row vector that contains 
% the numbers found in only a or only b, but not both. For example, the inputs:
% 
% a=[1 2 3 4 5];
% 
% b=[2 3 4 5 6];
% 
% would return [1 6], as 2, 3, 4 and 5 are in both a and b, and can 
% therefore be eliminated. Please sort the returned vector in order from lowest to highest.
% You may assume that there is at least one value that meets these criteria in a or b, 
% and there are no NaN or Inf values in either a or b.

function y = vector_diff(a,b)
a=unique(a);
b=unique(b);
ra=a;rb=b;
for i=1:length(a)
    r=(rb==a(i));
    rb(r)=[];
end
for i=1:length(b)
    r=ra==b(i);
    ra(r)=[];
end
  y = sort([ra,rb]);
  [m,~]=size(y);
  if(m>1)
      y=y';
  end
end
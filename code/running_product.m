% Given a string s representing a list of numbers, find the five consecutive numbers that multiply to form the largest number. Specifically, given s return the index i to the first of those five numbers. You can assume the maximum product is unique.
% 
% Example:
% 
%  Input  s = '123454321'
%  Output i = 3
% since the product of [3 4 5 4 3] is larger than any of the alternatives.

function i = running_product(s)
k=s-'0';
  for m=1:length(s)-4
      prod(m)=k(m);
      for n=1:4
      prod(m)=prod(m)*k(m+n);
      end    
  end
  [~,pos]=sort(prod,'descend');
  i=pos(1);
end
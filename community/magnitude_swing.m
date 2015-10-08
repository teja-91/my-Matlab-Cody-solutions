% You have a phenomenon that produces strictly positive or negative results.
% 
% delta = [1 -3 4 2 -1 6 -2 -7];
% Marching through this list from beginning to end, 
% mark a value with -1 if it is the greatest magnitude negative yet seen (strictly greater, not equal). 
% Mark it with a one if it has the greatest magnitude in the positive direction (strictly greater, not equal). 
% Just use a 0 if neither of these conditions have been met.
% 
% The result for the above example would be:
% 
% result = [1 -1 1 0 0 1 0 -1]

function y = magnitude_swing(x)
y(1)=2*(x(1)>0)-1;
for k=2:length(x)
  if(x(k)<0 && x(k)<min(x(1:k-1)))
    y(k)=-1;
  elseif( x(k)>0 && x(k)>max(x(1:k-1)))
    y(k)=1;
    else
    y(k)=0;
  end
end
end
% Given a vector:
% 
% [1 0 -1 3 2 -3 1]
% and a window of 2,
% 
% A sliding window would find:
% 
%    1 + 0 =  1
%    0 - 1 = -1
%   -1 + 3 =  2
%    3 + 2 =  5
%    2 - 3 = -1
%   -3 + 1 = -2
% Meaning that three of the windows were positive.
% 
% Given a vector and a window, how many of the windows sum to be positive, not zero or negative?

function y = sum_positive(x, window)
for k=1:length(x)-window+1
y(k)=sum(x(k:k+window-1));
end
  y = sum(y>0);
end
% Return a list of all values (sorted smallest to largest) that appear exactly three times in the input vector x. So if
% 
%  x = [1 2 5 2 2 7 8 3 3 1 3 8 8 8]
% then
% 
%  y = [2 3]


function y = threeTimes(x)
uniq=unique(x);
  y = sort(uniq(histc(x,uniq)==3));
end
% Find the 9's complement of the given number.
% 
% An example of how this works is shown here.

function y = nine_Comp(x)
l=length(num2str(x));
c9=str2num(char(ones(1,l)+'0'))*9;
  y = c9-x;
end
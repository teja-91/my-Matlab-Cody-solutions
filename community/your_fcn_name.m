% Are all the letters in the input string capital letters?
% 
% Examples:
% 
%  'MNOP' -> 1
%  'MN0P' -> 0
function y = your_fcn_name(x)
y = (sum(x<'A'| x>'Z')<1);%compares whether the given letters in the string are in the capital letters range
end
% Given two strings s1 and s2, create a new string s3 which is as short as possible and contains both strings.
% 
% If
% 
%  s1 = [1 2 3 4 5]
% and
% 
%  s2 = [5 4 3 2]
% then
% 
%  s3 = [1 2 3 4 5 4 3 2]
% There is guaranteed to be one best solution.

function s3 = overlap(s1,s2)
  s3=regexp(char(s1),char(s2))

end
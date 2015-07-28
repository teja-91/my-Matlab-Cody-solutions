% Given the string s1, return the string s2 with the target characters removed.
% 
% For example, given
% 
%  s1 = 'the main event'
% your code would return
% 
%  s2 = 'the  event'
% Note the 2 spaces between "main" and "event" Only the four letters in the word "main" were deleted.
function s2 = remAin(s1)
  s2 =regexprep(s1, '(\w*)ain\>', '');
end
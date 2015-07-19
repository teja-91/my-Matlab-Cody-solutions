% Some numbers like 323 are palindromes. Other numbers like 124 are not. But look what happens when we add that number to a reversed copy of itself.
% 
%     124
%   + 421
%    ----
%     545
% Let's try another.
% 
%     150
%   + 051
%    ----
%     201
% No, that didn't work, but what if we keep going?
% 
%     201
%   + 102
%    ----
%     303
% There, it became a palindrome again. Given a, return b = find_palindrome(a) such that b is the palindrome number that eventually results from repeated reversals and additions of a.
% 
% Example:
% 
%  Input  a = 150
%  Output b is 303


function b = find_palindrome(a)
  b=a;
  while(b~=str2num(fliplr(num2str(b))))
      b=b+str2num(fliplr(num2str(b)));
  end
end
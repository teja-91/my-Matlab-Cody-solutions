% Replace each character in string s1 with the character that is shifted 13 positions from it (wrap back to the beginning if necessary). So A ? N, B ? O, and so on until Y ? L and Z ? M. Case of the output should match the case of the input, so a ? n. Non-alphabetic characters are left in place and untouched.
% 
% If
% 
%  s1 = 'I love MATLAB'
% then
% 
%  s2 = 'V ybir ZNGYNO'

function s2 = rot13(s1)
s2=s1;
orig=['a':'z' 'A':'Z'];
coded=['n':'z' 'a':'m' 'N':'Z' 'A':'M' ];
for i=1:length(s2)
    if((s2(i)>='a'&&s2(i)<='z')||(s2(i)>='A'&&s2(i)<='Z'))
  s2(i) = coded(orig==s2(i));
    end
end
end

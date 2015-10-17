% This problem description is lifted from http://en.wikipedia.org/wiki/Levenshtein_distance.
% 
% The Levenshtein distance between two strings is defined as the minimum number of edits needed to 
% transform one string into the other, with the allowable edit operations being insertion, deletion, or substitution of a single character.
% 
% For example, the Levenshtein distance between "kitten" and "sitting" is 3, since the following three edits 
% change one into the other, and there is no way to do it with fewer than three edits:
% 
%  kitten => sitten  (substitution of 's' for 'k')
%  sitten => sittin  (substitution of 'e' for 'i')
%  sittin => sitting (insert 'g' at the end).
% So when
% 
%  s1 = 'kitten'
% and
% 
%  s2 = 'sitting'
% then the distance d is equal to 3.

function d = levenshtein(s1,s2)
m=length(s1);
n=length(s2);
d=zeros(m+1,n+1);
d(1:end,1)=0:m;
d(1,2:end)=(1:n)';
for j=1:n
    for i=1:m
        if(s1(i)==s2(j))
            d(i+1,j+1)=d(i,j);
        else
            d(i+1,j+1)=min([d(i,j+1)+1 d(i+1,j)+1 d(i,j)+1]);
        end
    end
end
d=d(end,end);
end
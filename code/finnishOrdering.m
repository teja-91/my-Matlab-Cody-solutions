% Sort a vector  of single digit whole numbers alphabetically by their name, in Finnish.
% 
% See the Wikipedia page for Finnish numerals for reference.
% 
% Example:
% 
%  Input a = [3 5 0]
%  Output b is [3 0 5]
% In Finnish 3 is kolme, 5 is viisi, and 0 is nolla. In alphabetic order of their Finnish spelling, these numbers would go kolme, nolla, viisi, or 3 0 5.

function b = finnishOrdering(a)
    finsh=[6 10 2 3 5 8 4 7 1 9];  
    for i=1:length(a)
        k(i)=finsh(a(i)+1);
    end
    [~,pos]=sort(k);
     b  =a(pos);
end  
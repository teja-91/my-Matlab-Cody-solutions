% Your job is to tidy up a list of words that appear in a string. The words are separated by one or more spaces.
% Remove all words that are one or two letters long and make sure that exactly one space separates all the words. 
% Strings will be made up only of letters and spaces. Spaces should not appear at the beginning or end of your output string.
% 
% Example:
% 
%  inStr =  'ours is  not to   reason why';
%  outStr = 'ours not reason why';

function outStr = remove_small_words(inStr)
if(inStr(1)==' ')
    inStr(1)=[];
end
    outStr=strsplit(inStr,' ');
    del_ele=zeros(size(outStr));
    for i=1:length(outStr)
        p=length(cell2mat(outStr(i)));
        if(p==1||p==2)
            del_ele(i)=1;
        end
    end
    del_ele=find(del_ele);
    outStr(del_ele)=[];
    outStr = strjoin(outStr);
end
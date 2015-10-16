% Given a list of US states, remove all the states that end with the letter A.
% 
% Example:
% 
%  Input  s1 = 'Alabama Montana Nebraska Vermont Nevada'; 
%  Output s2 is '   Vermont '; 


function s2 = refcn1(s1)
s2=strsplit(s1,' ');
del_ele=zeros(size(s2));
repl_empt=zeros(size(s2));
for i=1:length(s2)
    p=cell2mat(s2(i));
    if(p(end)=='a')
        repl_empt(i)=1;
        if(i>=2)
            q=lower(cell2mat(s2(i-1)));
            if(isequal(q,'new')||isequal(q,'north')||isequal(q,'west')||isequal(q,'south'))
                del_ele(i-1)=1;
            end 
        end
    end
end
repl_empt=find(repl_empt);
for i=1:length(repl_empt)
    s2(repl_empt)={''};
end
s2(find(del_ele))=[];
s2=strjoin(s2);
end
% Given a list of states, remove all the states that have two-word names.
% 
% If
% 
%  s1 = 'Alabama Montana North Carolina Vermont Nevada'; 
% then
% 
%  s2 = 'Alabama Montana  Vermont Nevada';

function s2 = refcn_2words(s1)
  s2=strsplit(s1,' ');
del_ele=zeros(size(s2));
repl_empt=zeros(size(s2));
for i=1:length(s2)
    p=lower(cell2mat(s2(i)));
    if(isequal(p,'new')||isequal(p,'north')||isequal(p,'west')||isequal(p,'south')||isequal(p,'rhode'))
        repl_empt(i)=1;  
        del_ele(i+1)=1;
    end
end
repl_empt=find(repl_empt);
for i=1:length(repl_empt)
    s2(repl_empt)={''};
end
s2(find(del_ele))=[];
s2=strjoin(s2);
end
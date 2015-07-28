% Given a string, remove all leading and trailing spaces (where space is defined as ASCII 32).
% 
%  Input  a = ' singular value decomposition  '
%  Output b is 'singular value decomposition'




function b = removeSpaces(a)
k=strsplit(a,char(32));
p=strjoin(k,'"');
if(p(length(p))=='"')
p(length(p))=[];
end
if(p(1)=='"')
    p(1)=[];
end
p(p=='"')=' ';
b=p;
end
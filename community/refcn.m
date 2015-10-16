% Given a list of US states, remove all the states that end with the letter A.
% 
% Example:
% 
%  Input  s1 = 'Alabama Montana Nebraska Vermont Nevada'; 
%  Output s2 is '   Vermont '; 
function s2 = refcn(s1)
k={'Nebraska' 'Nevada' 'New Hampshire' 'New Jersey' 'New Mexico' 'New York' 'North Carolina' 'North Dakota'};
g=regexp(s1,'N');
r=zeros(size(s1));
for m=1:length(g) 
for i=1:length(k)
    p=cell2mat(k(i));
    if(length(p)<=length(s1(g(m):end)))
        if(isequal(s1(g(m):g(m)+length(p)-1),p))
            r(g(m):g(m)+length(p)-1)=1;
        end
    end
end
end

s2=s1(~r);
end
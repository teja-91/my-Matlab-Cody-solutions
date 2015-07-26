% Given the string a, find the longest palindromic sub-string b.
% 
% So when
% 
%  a = 'xkayakyy';
% you should return
% 
%  b = 'kayak';


function b = pal(a)
%  k=unique(a)
% p=histc(a,unique(a))
% m=k(find(p(mod(p,2)==0)))
% for i=1:length(m)
% n(i,:)=find(a==m(i))
% end
% amin=n(n(:,1)==min(n(:,1)))
% b=n(:,2)
% amax=b(b==max(b))
% b=a(amin:amax)
for i=1:length(a)
    for j=1:length(a)-i
        if(a(j:(j+i))==fliplr(a(j:(j+i))))
            s=a(j:(j+i))
        end 
    end
end
b=s;
end



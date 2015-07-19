%Author- Raviteja
%date created- 19/7/2015
% this function Remove all the redundant elements in a vector,
%but keep the first occurrence of each value in its original location. 
% So if
% 
%  a = [5 3 6 4 7 7 3 5 9]
% then
% 
%  dedupe(a) = [5 3 6 4 7 9]


function b = dedupe(a)
 uniq=unique(a);
 ht=histc(a,unique(a));
 uniq=uniq(ht>1);
 for i=1:length(uniq)
     p=find(a==uniq(i));
     a(p(2:end))=[];
 end
 b=a;
end
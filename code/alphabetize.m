% Given a list of names in a cell array, sort the list by the last name. So if
% 
%  list = {'Barney Google','Snuffy Smith','Dagwood Bumstead'}; 
% then the output is
% 
%  alpha_list = {'Dagwood Bumstead','Barney Google','Snuffy Smith'}

function alpha_list = alphabetize(list)
for i=1:numel(list);
k=strsplit(cell2mat(list(i)))
q=cell2mat(k(end));
p(i)=q(1);
end
[~,pos]=sort(p);
  alpha_list = list(pos);
end
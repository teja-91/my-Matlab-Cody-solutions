% Write a function that accepts a cell array of strings and returns another cell array of strings with only the duplicates retained.
% 
% Examples:
% 
%  Input  strs = {'a','b','a'}
%  Output dups is 'a'
%  Input  strs = {'a','b','c'}
%  Output dups is Empty cell array: 0-by-1

function dups = duplicates(strs)
  unq=unique(strs);
  for m=1:length(unq)
      k=find(ismember(strs,unq(m)));
      if(length(k)>1)
          k(1)=[];
      end
      strs(k)=[];
  end
  dups=strs;
end

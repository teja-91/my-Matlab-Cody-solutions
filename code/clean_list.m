% Given a list of names in a cell array, remove any duplications that result from different capitalizations of the same string. So if
% 
%  names_in = {'bert','arthur','Bert','Fred'};
% the
% 
%  names_out = clean_list(names_in)
% results in
% 
%  names_out = {'bert','arthur','Fred'};
% Always take the first occurrence of the duplicated string

function names_out = clean_list(names_in)
unq=unique(lower(names_in));
for m=1:length(unq)
      k=find(ismember(lower(names_in),unq(m)));
      if(length(k)>1)
          k(1)=[];
          names_in(k)=[];
      end
      
end
  names_out = names_in;
end

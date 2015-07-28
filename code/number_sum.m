% Given a string with text and digits, add all the numbers together.
% 
% Examples:
% 
%  Input str = '4 and 20 blackbirds baked in a pie'
%  Output total is 24
%  Input str = '2 4 6 8 who do we appreciate?'
%  Output total is 20

function total = number_sum(str)
total = 0;
k=regexp(str,'\w*[0123456789]\w*','match');
for i=1:length(k)
    m=cell2mat(k(i));
    total=total+str2num(m);
end
  
end
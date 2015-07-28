% Add the numbers given in the cell array of strings. The strings represent amounts of money using this notation: $99,999.99.
% 
% Example:
% 
%  Input a = {'$12,001.87','$0.04','$12,003,887.55','$0.32'};
%  Output b is 12015889.78

function b = moneySum(a)
b=0;
for i=1:length(a)
k=cell2mat(a(i));
k(1)=[];
k(k==',')=[];
m=str2num(k);
b=b+sum(m);
end

end
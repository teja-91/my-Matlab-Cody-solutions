%Author -Raviteja
%Date created- 20/7/2015% Replace NaNs with the number that appears to its left in the row.
% 
% If there are more than one consecutive NaNs, they should all be replaced by the first non-NaN value to the immediate left of the left-most NaN. If the NaN is in the first column, default to zero.
% 
% For example, if
% 
% x = [NaN  1   2  NaN NaN 17  3  -4 NaN]
% then
% 
% y = [ 0   1   2   2   2  17  3  -4  -4]

function y = replace_nans(a)
if(isnan(a(1)))
    a(1)=0;
end;j=1;
for i=1:length(a);
    if(isnan(a(i)))
        a(i)=a(j);
    end
    j=i;
end
  y =a;
end
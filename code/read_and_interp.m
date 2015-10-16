% Given an input cell array of strings s, pick out the second column and turn it into a row vector of data.
% Missing data will be indicated by the number 9999. If you encounter missing data, you should perform linear 
% interpolation to the nearest accurate data points (missing data will not occur in the first or last element).
% 
% The first row is always descriptive text. So if the input cell array s is
% 
%  s = { ...
%     'Day  Temp'
%     '  1   -5'
%     '  2   19'
%     '  3   1'
%     '  4   9999'
%     '  5   3'};
% then the output variable t is the following row vector.
% 
%  t = [-5 19 1 2 3];

function t = read_and_interp(s)
k=cell2mat(s');
k=strsplit(k,' ');
k=k(4:2:end);
for i=1:length(k)
    p=str2num(cell2mat(k(i)));
    if(p==9999)
        t(i)=t(i-1)+1;
    else
        t(i)=p;
    end
end
end
% Calculate a vector of Bell numbers for sets up to length n. 
% Bell numbers are the maximum number of partitions of a set. See the Wikipedia entry for Bell Number.
% 
% Example
% 
%  Belln(8) = [1 1 2 5 15 52 203 877 4140
function y = Belln(n)
x(1,1)=1;q=2;
for p=2:n+1
    x(p,1)=x(p-1,end);
    for q=2:p
        x(p,q)=x(p,q-1)+x(p-1,q-1);
    end
end

  y = x(:,1)';
end
% Return true if the input is a Smith number in base ten. Otherwise, 
% return false. Read about Smith numbers at http://en.wikipedia.org/wiki/Smith_number.
% 
% A Smith number must be positive and have more than one factor.
function tf = isSmith(x)
if(x<ceil(x)||x<=0||isprime(x))
    tf=0;
else
    k=factor(x);
xdsum=sum(num2str(x)-'0');
fdsum=0;
for i=1:length(k)
    fdsum=fdsum+sum(num2str(k(i))-'0');
end
  tf =isequal(fdsum,xdsum);
end
end

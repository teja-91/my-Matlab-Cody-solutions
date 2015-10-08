% Given index n return n-th odious number.
% a non-negative integer is called odious if has an odd number of ones in its binary representation
function y = nthodious(n)
m=1;
for k=1:2*n-1
if(mod(sum(dec2bin(k)-'0'),2)~=0)
  l(m) = k;
m=m+1;
end
end
y=l(n);
end
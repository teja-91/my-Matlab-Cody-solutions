% Given four different positive numbers, a, b, c and d, provided in increasing order: a < b < c < d,
% find if any three of them comprise sides of a right-angled triangle. 
% Return true if they do, otherwise return false .



function flag = isTherePythagoreanTriple(a, b, c, d)
k=[a,b,c,d];
for i=1:4
ki=[k(i:end) k(1:i-1)];
g=sort(ki(1:3));
if(g(3)^2==g(2)^2+g(1)^2)
flag=true;
return
end
end
  flag = false;
end
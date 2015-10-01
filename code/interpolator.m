% You have a two vectors, a and b. They are monotonic and the same length. Given a value, va, where va is between a(1) and a(end) find the a(n), a(n+1) that flank it. 
%Now interpolate the value, vb, such that it is proportionally between b(n) and b(n+1).
% va can land exactly on a value of a.
function vb = interpolator(va, a, b)
k=find(a>=va);
if(a(k(1)==va))
vb=b(k(1));
else
k(2)=k(1);
k(1)=k(1)-1;
proportion=(a(k(2))-va)/(a(k(2))-a(k(1)));
vb=b(k(1))+(b(k(2))-b(k(1)))*proportion;
end
end
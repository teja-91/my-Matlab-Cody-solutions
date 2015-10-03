% Find the sum of the elements in the diagonal that starts at the top-right corner and ends at the bottom-left corner.
function y = sum_of_sec_diag(x)
[m,n]=size(x);y=0;
for l=0:m-1
y=y+x(l+1,n-l);
end
end
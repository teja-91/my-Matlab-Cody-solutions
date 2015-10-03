% Covering some basic topics I haven't seen elsewhere on Cody.
% 
% Rotate the input matrix 90 degrees counterclockwise (e.g. [1 2; 3 4] -> [2 4; 1 3]

function y = rotate(x)
m=size(x);
for k=1:m
h(:,k)=x(k,end:-1:1)';
end
  y = h;
end
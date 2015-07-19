% Given an integer n, make an n-by-n matrix made up of alternating ones and zeros as shown below. The a(1,1) should be 1.
% 
% Example:
% 
%  Input  n = 5
%  Output a is [1 0 1 0 1
%               0 1 0 1 0
%               1 0 1 0 1
%               0 1 0 1 0 
%               1 0 1 0 1]

function a = checkerboard(n)               
p = mod(1:n, 2);
a=not(bsxfun(@xor,p',p));           
end
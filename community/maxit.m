% Given an unsigned integer x, find the largest y by rearranging the bits in x.
% 
% Example:
% 
%  Input  x = 10
%  Output y is 12
% since 10 in binary is 1010 and 12 in binary is 1100.
function y = maxit(x)
%%dec2bin is used to give the bnary representatoin of the give number ina
%%string and bin2dec s the opposite of it.
 y = bin2dec(sort(dec2bin(x),'descend'));
  
end
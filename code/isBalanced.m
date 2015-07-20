%Autho -Raviteja
%Date created- 20/7/2015
% Given a positive integer find whether it is a balanced number. For a balanced number the sum of first half of digits is equal to the second half.
% 
% Examples:
% 
%  Input  n = 13722 
%  Output tf is true
% because 1 + 3 = 2 + 2.
% 
%  Input  n = 23567414 
%  Output tf = true
% All palindrome numbers are balanced.




function tf = isBalanced(a)
r=sscanf( sprintf( '%u', a), '%1d' )';
n=length(r);
if(n==1)
    tf=1;
    return
end
if(mod(length(r),2)==0)
    tf=(sum(r(1:(n/2)))==sum(r(((n+2)/2):end)));
else

  tf =(sum(r(1:((n-1)/2)))==sum(r(((n+3)/2):end)));
end
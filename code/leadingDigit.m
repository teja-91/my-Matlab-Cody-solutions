% Benford's Law states that the distribution of leading digits is not random. This is probably because many things grow logarithmically. Extract the leading digit from these vectors.
% 
% 10 --> 1
% 13 --> 1
% 0.3 --> 3
% -4 --> 4
% -5 --> 5
% -0.006 --> 6
% Input will be a vector
% 
%  x = [1 0.3 -2 0.001 -0.0006, 582398, 3020];
% Output should be
% 
%  y = [1 3 2 1 6 5 3];

function y = leadingDigit(x)
k=min(abs(x));
l=1;
x=abs(x);
%loop to find a multiplication facor such that 
%there is atleast one digit before decimal point
while(k>0&& k<1)
k=k*10;
l=l*10;
end
x=x*l;
for i=1:length(x)
    k=int2str(x(i));
    y(i)=k(1)-'0';
end
end

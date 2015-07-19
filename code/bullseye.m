% Given n (always odd), return output a that has concentric rings of the numbers 1 through (n+1)/2 around the center point. Examples:
% 
%  Input  n = 3
%  Output a is [ 2 2 2 
%                2 1 2
%                2 2 2 ]
%  Input  n = 5
%  Output a is [ 3 3 3 3 3
%                3 2 2 2 3 
%                3 2 1 2 3
%                3 2 2 2 3 
%                3 3 3 3 3 ]



function a = bullseye(n)
k=(n+1)/2;c=zeros(n,n);
f=k;
for m=0:k-1
    for p=m+1:n-m
        for q=m+1:n-m
            c(p,q)=f;
        end
    end
    f=f-1;
end
a=c;
end
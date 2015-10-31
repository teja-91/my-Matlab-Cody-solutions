% Given a matrix A that represents the state of Conway's game of Life at one instant (time t=n), return the matrix B that represents the state of the game at the next instant (time t=n+1).
% 
% Assume a toroidal game board, so the edges of the matrix wrap left to right and top to bottom.
% 
% Examples:
% 
%  Input  A = [ 1   1   0   0
%               0   1   0   0
%               1   1   0   0
%               0   0   0   0 ]
%  Output B = [ 1   1   0   0
%               0   0   1   0
%               1   1   0   0
%               0   0   0   0 ]
%  Input  A = [ 0   1   1   0
%               1   1   1   0
%               0   0   1   0
%               0   0   0   0 ]
%  Output B = [ 1   0   1   1
%               1   0   0   0
%               0   0   1   1
%               0   1   1   0 ]

function B = life(A)
%toroid matrix
[m,n]=size(A);
g=zeros(m+2,n+2);
g(2:end-1,2:end-1)=A;
g(1,2:end-1)=A(end,:);
g(end,2:end-1)=A(1,:);
g(2:end-1,1)=A(:,end);
g(2:end-1,end)=A(:,1);
[m,n]=size(A);
k=zeros(m,n);
for p=1:m
    for q=1:n
        k(p,q)=numberofones([p+1,q+1]);
    end
end
    %number of neighbours function
    function y=numberofones(x)
        m1=x(1);
        n1=x(2);
        y=g(m1-1:m1+1,n1-1:n1+1);
        y(2,2)=0;
        y=sum(y(:));
    end
A((A==1)&(k<2))=0;
A((A==1)&(k>3))=0;
A((A==0)&(k==3))=1;
  B = A;
end
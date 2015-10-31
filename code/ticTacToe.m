% Given a tic tac toe board:
% 
% 1 represents X
% 0 represents empty.
% -1 represents O
% It is X's move. If there is an immediate win possibility, choose a square for an immediate win. Otherwise return 0.
% 
% Return absolute index of the square of choice. If multiple square are valid, return them in order.
% 
% Example:
% 
%  Input  a = [ 1  0  1
%              -1  1  0
%               0 -1 -1]
%  Output wins is [3 4]

function wins = ticTacToe(a)
g=a;
%rows
[p,q]=size(g);
for m=1:p
    g(m,:)=comparek(g(m,:));
end
%columns
for n=1:q
    g(:,n)=comparek(g(:,n));
end
%main diagonal
g(find(eye(p,q)))=comparek(g(find(eye(p,q))));
%anti diagonal
g(find(fliplr(eye(p,q))))=comparek(g(find(fliplr(eye(p,q)))));
    function y=comparek(k)
        if(sum(k==1)==2)
            k(k==0)=1;
        end
        y=k;
    end
wins=find(a~=g);
if(isempty(wins))
    wins=0;
end
end
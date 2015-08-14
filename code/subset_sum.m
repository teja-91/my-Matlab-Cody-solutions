% Given a vector v of integers and an integer n, return the the indices of v (as a row vector in ascending order) that sum to n.
%If there is no subset in v that sums to n, return an empty matrix []. You can assume that the answer will always be unique.
% 
% Example:
% 
%  >> v = [2, 3, 5];
%  >> n = 8;
%  >> subset_sum(v, n)
%  ans =
%       2     3



function ind = subset_sum(v,n)
[v1,~]=sort(v);
if(~isempty(v(v==n)))
    ind=find(v==n);
    else
    ind = [];
    k=[];
    for i=1:length(v1);
        k(i,:)=cumsum([v1(i:end) v1(1:i)]);
        p=[v1(i:end) v1(1:i)];
        pos=find(k(i,:)==n);
    if(~isempty(pos))
        subs=p(1,1:pos);
        for c=1:length(subs)
            h=find(v==subs(c));
            if(length(h)>1) ind=h;break;else
        ind(c)=h;
            end
        end
        break
    end
    end
end
end
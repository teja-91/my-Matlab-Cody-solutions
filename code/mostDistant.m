% Given a collection of points, return the indices of the rows that contain the two points most distant from one another. The input vector p has two columns corresponding to the x and y coordinates of each point. Return ix, the (sorted) pair of indices pointing to the remotest rows. There will always be one unique such pair of points.
% 
% So if
% 
%  p = [0 0]
%      [1 0]
%      [2 2]
%      [0 1]
% Then
% 
%  ix = [1 3]
% That is, the two points p(1,:) and p(3,:) are farthest apart.


function ix = mostDistant(p)
k=p(:,1)+j*p(:,2);
for m=1:length(k)
    for n=1:length(k)
v(m,n)=abs(k(n)-k(m));
v(m,m)=NaN;
    end
end
[~,n]=ind2sub(size(v),find(v==max(max(v))));
  ix=[n(1),n(2)];
end
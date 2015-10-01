% Given a matrix, find all elements that exist in every row.
% 
% For example, given
% 
%  A =
%      1 2 3 5
%      9 2 5 9
%      3 2 5 9
%      1 2 1 5
%      5 1 3 2
% the answer would be the vector '2 5'. Elements should be returned sorted ascending.
% 
% Note there is no guarantee that there are any such elements; if there are none, the routine should return the empty set. 
%     Also, the matrix might contain NaNs, repeats, or very large or very small elements.

function y = common_by_row_all(x)
    y=[];
[m,~]=size(x);%size of given matrix
unq=unique(x);%to get the unique elements in the given matrix
%unq(isnan(unq))=[];%to remove the NaNs from counting process
ind=0;%index of the result
for f=1:length(unq)
    count=0;%initialization of count
    for b=1:m
        if(sum((x(b,:)==unq(f)))>=1)
            count=count+1;
        end
        %if the number in unq is present atleast once then count is 1 else 0 
        %this count gives the number of rows a unique number is present
    end
    if(count==m)%if count >1 then that number is concatenated to result
       ind=ind+1;
       y(ind)=unq(f);
   end
end  
end
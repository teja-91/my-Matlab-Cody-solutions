% You want to find all elements that exist in greater than 50% of the rows in the matrix.
% 
% For example, given
% 
%  A =
%      1 2 3 5
%      9 2 5 9
%      3 2 5 8
%      1 2 1 5
%      5 1 3 2
% the answer would be the row vector
%  [1  2  3  5]
% since each of these appears three or more times in the rows of matrix A. Elements should be returned sorted ascending.
% 
% Note there is no guarantee that there are any such elements;
% if there are none, the routine should return the empty set. 
%     Also, the matrix might contain repeats, very large or very small numbers, or NaNs (though NaN should not 
%     be treated as a number to be returned in the output).
function y = common_by_row(x)
y=[];
[m,~]=size(x);%size of given matrix
unq=unique(x);%to get the unique elements in the given matrix
unq(isnan(unq))=[];%to remove the NaNs from counting process
ind=0;%index of the result
for f=1:length(unq)
    count=0;%initialization of count
    for b=1:m
        count=count+sum((x(b,:)==unq(f))>=1);
        %if the number in unq is present atleast once then count is 1 else 0 
        %this count gives the number of rows a unique number is present
    end
    if(count>(m/2))%if count >1 then that number is concatenated to result
       ind=ind+1;
       y(ind)=unq(f);
   end
end  
end
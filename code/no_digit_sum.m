% Add all the integers from 1 to n in which the digit m does not appear. m will always be a single digit integer from 0 to 9.
% 
%  no_digit_sum(10,1) = 44
% because 1 and 10 are excluded from the sum and
% 
%  sum(2:9) = 44

function total = no_digit_sum(n,m)
total=0;
  for i=1:n
      if(~isempty(strfind(int2str(i),int2str(m))))
          k=0;
      else
          k=i;
      end
      total=total+k;
  end       
end

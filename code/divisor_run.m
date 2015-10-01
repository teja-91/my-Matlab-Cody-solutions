% Given the vector a, find the longest run of consecutive numbers that can be evenly divided by the same number d where d > 1.
% Example
%  Input  a = [5 4 2 8 3 7 14]
%  Output len is 3, d is 2 
% The last two numbers, 7 and 14, are divisible by 7, 
% but the run of numbers [4 2 8] are all divisible by 2.
% So the longest run is 3. You can assume that d is unique.
function [len,d] = divisor_run(a)
len1=zeros(1,length(a)-1);%used to store the run length for each element in the matrix
d1=zeros(1,length(a)-1);% used to store the gcd for run length of each element
  for k=1:length(a)-1
      g=gcd(a(k),a(k+1));% calculated the GCD of the two consecutive numbers in the matrix
      d1(k)=g;
      if(g~=1)
          len1(k)=len1(k)+2;% if GCD is not 1 then the run length is 2
          % if GCD is 1 then loop is used to check if the next number is
          % divisible for by the GCD of the two previous numbers
          for d=k+2:length(a)
          if(mod(a(d),g)==0)    
              len1(k)=len1(k)+1;
          else
           break
          end
          end
      end
  end
  h=find(len1==max(len1));
  len=len1(h(1));
  d=d1(h(1));
end
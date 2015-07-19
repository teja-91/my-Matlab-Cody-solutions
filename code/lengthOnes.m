% Given a string such as
% 
%  s = '011110010000000100010111'
% find the length of the longest string of consecutive 1's. In this example, the answer would be 4.
% 
% Example:
% 
%  Input  x = '110100111'
%  Output y is 3

function y = lengthOnes(s)
c=zeros(1,length(s));
p=1;
  for i=1:length(s)
      if(s(i)=='1') 
          c(p)=c(p)+1;
      else
          p=p+1;
      end
  end
  c=sort(c,'descend');
  y=c(1);
end
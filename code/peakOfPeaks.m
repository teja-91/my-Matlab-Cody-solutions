% A Collatz sequence is the sequence where, for a given number n, the next number in the sequence is either n/2 if 
%the number is even or 3n+1 if the number is odd. See Problem 21 for more information.
% 
% Let c(n) be the sequence for n, and p(n) be the peak value of that sequence. 
%For a given threshold nmax, find the highest peak value max(p(n)) for all Collatz sequences starting with integers between 1 and nmax.

function pmax = peakOfPeaks(nmax)
  for i=1:nmax
      n=i;
      c(i,1)=n;cnt=1;
  while(n~=1)
  if(mod(n,2)==0)
      n=n/2;
  else
      n=3*n+1;
  end
  c(i,cnt+1)=n;
  cnt=cnt+1;
  end    
  end
  pmax=max(c(:));
end
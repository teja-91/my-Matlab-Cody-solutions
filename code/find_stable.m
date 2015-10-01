% The characteristic equation for a dynamic system is a polynomial whose roots 
% indicate its behavior. If any of the roots of the polynomial have a positive real part,
% the behavior of the system will be divergent. Given a cell array of vectors that represent polynomials,
% remove the ones that have roots with positive real components.
% 
% Example:
% 
%  polyIn = {[1 1],[1 -1]}
%  polyOut = {[1 1]}
% since roots([1 -1]) is 1, a positive number.
function polyOut = find_stable(polyIn)
%since cell index automatically adjusts for the deletions individual
%elements can not be deleted during a loop so I have taken the indexes of
%those elements in a seperate vector
c=1;
for l=1:length(polyIn)
    %this condition checks for the presence of polynomials with positive
    %roots
  if(sum((roots(cell2mat(polyIn(l))))>0)>=1)
      k(c)=l;
      c=c+1;
  end
end
polyIn(k)=[];
polyOut=polyIn;
end
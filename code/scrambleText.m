% An internet meme from 2003 (read more here) asserted that readers are relatively 
%insensitive to letter order in words, so long as the first and last letters are unchanged.
% 
% Given a string of words s, take each word in turn and reverse the order of letters 2 through n-1,
%where n is the length of the words. Non-alphabetic characters should remain in place.
% 
% So if
% 
%  sIn = 'hello'
% then
% 
%  sOut = 'hlleo'
% And if
% 
%  sIn = 'This is the first time I have used MATLAB.'
% then
% 
%  sOut = 'Tihs is the fsrit tmie I hvae uesd MALTAB.'
function sOut = scrambleText(sIn)
  k=strsplit(sIn,' ');
  for i=1:length(k)    
      tmp=cell2mat(k(i));
      pos=regexp(tmp,'[a-zA-Z]');
      if(length(pos)>2)
      tmp(pos(2):pos(end-1))=fliplr(tmp(pos(2):pos(end-1)));
      k(i)=cellstr(tmp);
      end
  end
  sOut=strjoin(k);
end
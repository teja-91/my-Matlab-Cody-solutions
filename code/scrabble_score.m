% Given a word, determine its score in Scrabble.
% 
% The input string will always be provided in lower case. Use the English language Scrabble letter values as found in this Wikipedia reference: letter distributions for English.
% 
% Example:
% 
%  Input  str = 'matlab'
%  Output score is 10.

function score = scrabble_score(str)
s={'lsunrtoaie','gd','bcmp','fhvwy','k','','','jx','','qz'};
  score = 0;
  for m=1:length(str)
      for n=1:numel(s)
          if(sum(cell2mat(s(n))==str(m))>=1)
              score=score+n;
              break;
          end
      end
  end
end
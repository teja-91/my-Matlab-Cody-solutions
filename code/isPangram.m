%Author:- RaviTeja
%Date Created -19/7/2015


% A pangram, or holoalphabetic sentence, is a sentence using every letter of the alphabet at least once.
% 
% Example:
% 
%  Input  s = 'The quick brown fox jumps over the lazy dogs'
%  Output tf = true

function tf = isPangram(s)
s(regexp(lower(s),'[!-?]'))=[]%remove the extra characters
s(s==' ')=[]%remove the spaces bin the string
tf=(length(unique(lower(s)))==26)%now compare whether all the alphabets are there in the string
end
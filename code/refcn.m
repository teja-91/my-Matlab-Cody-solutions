%%Author - Raviteja
%Date created- 19/7/2015
%This program  
%Remove all the consonants in the given phrase.
% 
% Example:
% 
%  Input  s1 = 'Jack and Jill went up the hill'; 
%  Output s2 is 'a a i e u e i';



function s2 = refcn(s1)
s1(regexp(lower(s1),'[bcdfghjklmnpqrstvwxyz]'))=[]
s2=s1
end
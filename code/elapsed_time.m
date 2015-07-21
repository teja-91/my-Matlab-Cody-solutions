%Author: Raviteja
%Date created: 21/7/2015
% Given two date strings d1 and d2 of the form yyyy/mm/dd HH:MM:SS (assume hours HH is in 24 hour mode), determine how much time, in decimal hours, separates them. Assume d2 is always later than d1.
% 
% Example:
% 
%  Input d1 = '2010/12/14 12:00:00'
%  Input d2 = '2010/12/14 13:06:36'
%  Output elapsed is 1.11

function elapsed = elapsed_time(d1,d2)
% d1(regexp(d1,'[:/]'))=' ';
% d2(regexp(d2,'[:/]'))=' ';
% d1=str2num(d1)
% d2=str2num(d2)
% p=d2-d1
% numdays=(p(1)*(365.2422))+(p(2)*(365.2422/12))+(p(3))
% elapsed=vpa((numdays*24)+p(4)+(p(5)/60)+(p(6)/3600))
elapsed=(etime(datevec(d2),datevec(d1)))/3600;
  
end
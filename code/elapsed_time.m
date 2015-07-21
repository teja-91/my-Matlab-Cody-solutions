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
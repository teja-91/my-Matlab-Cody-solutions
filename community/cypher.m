% If given a letter from the set:
% 
% [abc...xyz]
% and a shift, implement a shift cypher.
% 
% Example:
% 
% 'abc' 
% with a shift of -1 yields
% 
% 'zab'
function outStr = cypher(instr, shift)
 instr=instr+shift;
instr(instr>'z')=instr(instr>'z')-'z'+'a'-1;

  outStr = char(instr);
end
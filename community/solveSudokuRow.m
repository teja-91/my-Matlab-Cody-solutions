% A simple yet tedious task occurs near the end of most Sudoku-solving algorithms, computerized or manual. The task is, given the row (or column or square) of a Sudoku puzzle with only a single number missing, fill in the missing number and return a completed row.
% 
% For more information regarding Sudoku, refer to the Wikipedia Entry for Sudoku.
% 
% The input will be in the form of a vector (row or column) or a 9x9 matrix and the output has to have the same dimensionality as the input. Blank entries are signified with the number 0. There will always be one and only one blank entry in the input.
% 
% Example
% 
%      input  = [ 1 2 3 4 0 6 7 8 9 ];
%      output = [ 1 2 3 4 5 6 7 8 9 ]; 
function y = solveSudokuRow(x)

g=sort(x(:))';
k=diff(g);
  x(x==0)=g(find(k==2))+1;
  y=x;
  
end
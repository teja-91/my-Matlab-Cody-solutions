% Create a function taking a non-negative integer as its parameter and returning a string containing the Roman Numeral representation of that integer.
% 
% By convention, "modern" Roman numerals are written by expressing each digit separately
% starting with the leftmost digit and skipping any digit with a value of zero.
% 
% Examples
% 
% If n is 1990 then romStr = 'MCMXC' since 1000=M, 900=CM, 90=XC.
% If n is 2008 then romStr = 'MMVIII' since 2000=MM, 8=VIII.
% If n is 1666 then romStr = 'MDCLXVI'.
% If n is 0 then romStr is empty ([] and '' are both acceptable)
% n will always be an integer between 0 and 3999 (inclusive).

function romStr = dec2rom(n)
if(n~=0)
s=[];
digits('while',1000,'M');
digits('if',900,'CM');
digits('if',500,'D');
digits('if',400,'CD');
digits('while',100,'C');
digits('if',90,'XC');
digits('if',50,'L');
digits('if',40,'XL');
digits('while',10,'X');
digits('if',9,'IX');
digits('if',5,'V');
digits('if',4,'IV');
digits('while',1,'I');
romStr=cell2mat(s);
else
    romStr='';
end
function y=digits(loop,num,varargin)
    if(isequal(loop,'while'))
        while(n>=num)
            s=[s varargin(1:end)];
            n=n-num;
        end
    elseif(isequal(loop,'if'))
        if(n>=num)
        s=[s varargin(1:end)];
        n=n-num;
        end
    end
    y=1;
end
end  
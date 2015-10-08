% Test if the input is a Kaprekar number: http://mathworld.wolfram.com/KaprekarNumber.html. Return a logical true or false.

function tf = kap(x)
lx=length(num2str(x));
if(lx==1) 
    tf=true;
else
    t=num2str(x^2);
    n=length(t);
    t(1:n-lx-1);
    t(n-lx:end);
    tf=isequal(str2num(t(n-lx+1:end))+str2num(t(1:n-lx)),x);
end
end
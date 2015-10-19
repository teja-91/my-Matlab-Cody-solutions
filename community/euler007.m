% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
% we can see that the 6th prime is 13.
% 
% What is the Nth prime number?

function y = euler007(x)
n=5;cnt=2;
while(1)
    if(isprime(n))
        cnt=cnt+1;
        if(cnt==x)
            y=n;
            return
        end
    end
    n=n+2;
end
end
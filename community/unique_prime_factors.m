% List the prime factors for the input number, in decreasing order. List each factor only once, even if the factorization includes it multiple times.
% 
% Examples:
% 
% in = 137 ---> out = 137
% 
% in = 876 ---> out = [73 3 2]

function y = unique_prime_factors(x)
n=2:x;% getting te numbers from 2 to x
n=n(isprime(n));% seperating the prime numbers
n=n(mod(x,n)==0);%finding prime factors
  y = sort(n,'descend');%sort the resuting vector in descending order
end
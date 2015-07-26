%Author : raviteja
%date : 26/7/2015

%Sort the given list of numbers a according to how far away each element is from the target value t. The result should return the list sorted in descending order of the absolute value of the difference between a(n) and t.
% 
% So if a = [1 2 4 8 17] and t = 12, then the output b should be [1 2 4 17 8].


function b = targetSort(a,t)
p=a+j.*abs(a-t);
[~, idx] = sort(imag(p));
b=fliplr(real(p(idx)));
end
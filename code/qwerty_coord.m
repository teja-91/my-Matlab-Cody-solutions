

function [r,c] = qwerty_coord(key)
 k=['1':'9','0';
    'q','w','e','r','t','y','u','i','o','p';
    'a','s','d','f','g','h','j','k','l',';';
    'z','x','c','v','b','n','m',',','.','/'];
[r,c]=ind2sub(size(k),find(k==key));
ends
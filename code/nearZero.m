function y = nearZero(x)
q=find(x==0);
if(numel(x)==2)
    y=x(x~=0);
    return
end
if((q(1)==1)||(q(end)==length(x)))
    if(q(1)==1)
    r=[x(q(2:end)-1) x(q(1:end-1)+1)]
    else
        r=[x(q-1) x(q(1:end-1)+1)]
    end
    
    else
    r=[x(q-1) x(q+1)]
end
  k=sort(r,'descend')
  y=k(1)
end
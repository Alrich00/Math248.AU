function out=NewtInt(x0,x,y)

Avec=nddt(x,y);
n=size(x);
t=Avec(n);

for i=n:-1:1
    t=t*(x0-x(i))+Avec(i);
    
end

out=t;

end

function out=nddt(x,y)
n=size(x);
out=zeros(n);
nd=zeros(n,n);

for i=1:n
    nd(i,0)=y(i);
end

for j=1:n
    for k=j:n
        nd(k,j)=(nd(k,j-1)-nd(k-1,j-1))/(x(k)-x(k-j));
    end
end

for n1=1:n
    out(n1)=nd(n1,n1);
end
end

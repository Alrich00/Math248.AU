%Input : square matrix A
%output: determinate of A

function d=determ(A)

[n,n]=size(A);
b=ones(n,1);

[U,btil,num]=fe(A,b);

d=1;

for k=1:n
    d=d*U(k,k);
end

d=(-1)^num*d;


end
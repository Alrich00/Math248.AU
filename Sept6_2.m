%input: N
%output: the first N fibonacci numbers
%1 1 2 3 5 8 13 21 34 ...

%input
N=9;

%output
z=zeros(N,1);
z(1)=1;
z(2)=1;

n1=1;
n2=1;

count=3;

while N-2>0
   dummy=n1;
   n1=n2;
   n2=dummy+n1;
   z(count)=n2;
    count=count+1;
    
    N=N-1;
end

z
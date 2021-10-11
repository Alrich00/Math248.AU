clear;
close all;
 
A=input('What is the coefficient matrix A? \n');
B=input('What is the constant vector B? \n');
 
%Forward Elimination
n=size(A);
 
for k=1:n-1
    for i=k+1:n
        
        t=A(i,k)/A(k,k);
        
        for j=k+1:n
            A(i,j)=A(i,j)-t*A(k,j);
        end
        
        B(i)=B(i)-t*B(k);
        
    end
end
 
U=A;
Btil=B;
%End of Forward Elimination
 
%Back Substitution
x=zeros(n);
 
for p=1:n
x(p)=Btil(p)/U(p,p);
end
 
for i2=1:n-1
    s=Btil(i2);
    
    for k2=i2+1:n
        s=s-U(i2,k2)*x(k2);
    end
    
    x(i2)=s/U(i2,i2);
    
end
%end of Back Substitution
 
x
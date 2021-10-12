%Forward elimination with pivoting.
%Output A will be upper triangular.
%Output b will be the modified b following the elementry operations applied
%to A.
%num_swaps: the number of row swaps from pivoting.

function[A,b,num_swaps]=fe(A,b)

[n,~]=size(A);

num_swaps=0;

dummy=zeros(1,n);
dummy2=0;

for k=1:n-1
    
    %pivoting
    if A(k,k)==0
        
        for i=k+1:n
           if A(i,k)~=0
               dummy=A(k,:); %A(K,:) is the k-th row of A.
               A(k,:)=A(i,:);
               A(i,:)=dummy;
               
               dummy2=b(k);
               b(k)=b(i);
               b(i)=dummy2;
               
               num_swaps=num_swaps+1;
               break;
           end
        end
    end
    
    %fe without pivoting
    for i=k+1:n
        t=A(i,k)/A(k,k);
        A(i,k)=0;
        for j=k+1:n
            A(i,j)=A(i,j)-t*A(k,j);
        end
        b(i)=b(i)-t*b(k);
    end
    
end


end
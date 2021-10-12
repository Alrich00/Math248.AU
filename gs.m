%Gaussian Elimination Function
%input: A, b --> Output x where Ax=b;

function x=gs(A,b)

[U,btil,~]=fe(A,b);
x=bs(U,btil);


end
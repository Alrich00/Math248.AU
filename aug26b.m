A=imread('monke.jpg');

[m,n,~]=size(A);
Ac=zeros(m,n);

A(:,:,1)=ones*255;
A(:,:,3)=ones*190;


imshow(A)
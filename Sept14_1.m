%This program takes an image and returns approximations of the image
%using the singular value decompisition

close all;
clear all;

A=imread('monke1.jpg');
A1=rgb2gray(A);

A2=double(A1);
[U,S,V]=svd(A2);

%Rank 10 approximation
r=10;
Ar=U(:,1:r)*S(1:r,1:r)*V(:,1:r)';
Ar=uint8(Ar);
subplot(2,3,1)
imshow(Ar)

A20=U(:,1:20)*S(1:20,1:20)*V(:,1:20)';
subplot(2,3,2)
A20=uint8(A20);
imshow(A20)

A40=U(:,1:40)*S(1:40,1:40)*V(:,1:40)';
subplot(2,3,3)
A40=uint8(A40);
imshow(A40)

A80=U(:,1:80)*S(1:80,1:80)*V(:,1:80)';
subplot(2,3,4)
A80=uint8(A80);
imshow(A80)

subplot(2,3,5)
imshow(A1)

subplot(2,3,6)
imshow(A)
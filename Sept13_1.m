%this program takes two images and changes them into a matrix
%combine the matrices in carious ways
% then returns the new matrix into a picture and displays it

close all;

A=imread('1.jpg');
B=imread('2.jpg');

[x1,y1,~]=size(A);
[x2,y2,~]=size(B);

x=min(x1,x2);
y=min(y1,y2);

%A2 and B2 are the cropped versions of A and B
A2=A(1:x,1:y,1:3);
B2=B(1:x,1:y,1:3);
C2=A2+0.5*B2;

imshow(A);
imshow(B);
imshow(C2);
%This is the first program in MAth 248.
%in this program we will change the color of this image.

%C represents the color picture.
C=imread('monke.jpg');

%B represents the black and white version.
B=rgb2gray(C);
imshow(B)
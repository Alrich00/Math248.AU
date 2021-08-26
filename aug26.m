%This is a code writen in Math 248 on Aug 26 2021.
%Author: Adam Ulrich
%Institution: James Madison University
%Description of Code:

Z=zeros(1000,1000);

for k=1:1000
    Z(k,k)=255;
end
imshow(Z);

Zc=zeros(1000,1000,3);

%Change the first layer of Zc to Z.

Zc(:,:,1)=Z;
Zc(:,:,3)=Z;
imshow(Zc)
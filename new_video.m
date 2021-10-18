clear all;
close all;

video_object = VideoReader('bonk.mp4');
A=readFrame(video_object);
[m,n,~]=size(A);

count=1;
X=[];

while hasFrame(video_object)
    A=readFrame(video_object);
    A=rgb2gray(A);
    
    imshow(A)
    
    X(:,count)=reshape(A,m*n,1);
    count=count+1;
    
end

Num_Frames=size(X,2);
X=double(X);

[U,S,V]=svd(X,'econ');
rankB=1;
B=U(:,1:rankB)*S(1:rankB,1:rankB)*V(:,1:rankB)';

figure
for k=1:Num_Frames
    
    xx2=B(:,k);
    II=reshape(xx2,m,n);
    II=mat2gray(II);
    
    imshow(II)

end


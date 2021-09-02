%input: positive integer N
%output: sqrt of N with 4 decimal places

close all;
clear;
clc;

%input
N=input('What is your integer? \n')

for  k=1:N
   S=sqrt(k);
   fprintf('The square root is %.4f. \n',S)
end
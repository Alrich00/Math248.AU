%input: positive integer N
%output: sum of first N even numbers and sum of first odd numbers

close all;
clear;
clc;

%input
N=input('What is your integer? \n');
even=0;
odd=0;

for k=1:N
    even=even+2*k;
end
 fprintf('The sum of the first %.f odd sum is %.f. \n', N, even)
 
 for j=1:N
     odd=odd+(2*j-1);
 end
 
fprintf('The sum of the first %.f odd sum is %.f. \n', N, odd)
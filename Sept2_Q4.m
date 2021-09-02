%input: positive integer N, a, b
%output: numbers of integers <= N that is divisable by a and b
%        numbers of integers <= N that is divisable by a but not b
%        numbers of integers <= N that is divisable by b but not a
%        numbers of integers <= N that is not divisable by a or b

close all;
clear;
clc;

%input
N=input('What is your integer "N"? \n');
a=input('What is your integer "a"? \n');
b=input('What is your integer "b"? \n');
count1=0;
count2=0;
count3=0;
count4=0;

%output
for k=1:N
    if rem(k,a)==0 && rem(k,b)==0
        count1=count1+1;
    end
end

fprintf('The number of int <= %.f is divisable by %.f and %.f is %.f. \n', N, a, b, count1)

for k=1:N
    if rem(k,a)==0 && rem(k,b)~=0
        count2=count2+1;
    end
end

fprintf('The number of int <= %.f is divisable by %.f and %.f is %.f. \n', N, a, b, count2)

for k=1:N
    if rem(k,a)~=0 && rem(k,b)==0
        count3=count3+1;
    end
end

fprintf('The number of int <= %.f is divisable by %.f and %.f is %.f. \n', N, a, b, count3)

for k=1:N
    if rem(k,a)~=0 && rem(k,b)~=0
        count4=count4+1;
    end
end

fprintf('The number of int <= %.f is divisable by %.f and %.f is %.f. \n', N, a, b, count4)
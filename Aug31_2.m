%this program takes a positive integer N as an input, and returns the sum
%1+2+...+N Instead of using a formula to get this number
%we will use a for loop.

%directly type in your N.
N=10;

sum=0;

for k=1:N
    sum=sum+k;
end

fprintf('your sum is %.f \n', sum);
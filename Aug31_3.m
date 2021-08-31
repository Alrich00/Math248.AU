%input N
%output 1^2+2^2+...+N^2

N=10;

sum=0;

for k=1:N
    sum=sum+k^2;
end

fprintf('your sum is %.f \n', sum);
%find the first integer N for which N! is a 50 didget number

%input:
N=1;
fact=1;

while fact<10^49
N=N+1;
fact=fact*N;

end

fprintf('%d factorial is %d. \n', N, fact);
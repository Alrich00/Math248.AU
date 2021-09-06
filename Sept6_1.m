%Input: positive integer N
%Output: N!=N*(N-1)*(N-2)...*1 by using a while loop

%input:
N=5;
Nfact=1;
Norg=N;

while N>0
Nfact=Nfact*N;
N=N-1;

end

fprintf('%d factorial is %d. \n', Norg, Nfact);
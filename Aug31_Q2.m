%input three real numbers
%output the max of the three inputs

%input
a=input('What is your first real number? \n');
b=input('What is your second real number? \n');
c=input('What is your third real number? \n');

%output
if a>b && a>c 
    fprintf('Your max number is %.f. \n', a);
elseif b>a && b>c
    fprintf('Your max number is %.f. \n', b);
elseif c>a && c>b
    fprintf('Your max number is %.f. \n', c);
else
    fprintf('Your values are equivilent. \n');
end

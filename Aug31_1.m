%input will be two real numbers
%output will print the larger number using an if statment

%input
a=input('What is your first real number? \n');
b=input('What is your second real number? \n');

%output
if a>b 
    fprintf('Your max number is %.2f. \n', a);
elseif a<b
    fprintf('Your max number is %.2f. \n', b);
else a=b
    fprintf('Your values are equivilent. \n');
end

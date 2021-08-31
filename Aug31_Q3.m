%three edge lengths of a triangle 
%output: can these three edges form a triangle.

%input:
a=input('What is your first edge? \n');
b=input('What is your second edge? \n');
c=input('What is your third edge? \n');

%output
if a+b>c && a+c>b && b+c>a
    fprintf('these values can form a triangle. \n');
else
    fprintf('these values cannot form a triangle. \n');
end
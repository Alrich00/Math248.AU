%this is a function. It takes a, b, c as an input,
%solutions to ax^2+bx+c=0.

%x is the output variable name
%a,b,c are the cvariable names
%function (output variables)=filename(input variables)

function x=qformula(a,b,c)

%algorithm: quadratic formula
x1=(-b+sqrt(b^2-4*a*c))/(2.0*a);
x2=(-b-sqrt(b^2-4*a*c))/(2.0*a);

x=zeros(2,1);

%output: all solutions to ax^2+bx+c=0.
x(1,1)=x1;
x(2,1)=x2;

end
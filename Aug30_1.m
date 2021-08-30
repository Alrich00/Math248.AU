%input: real numbers a, b, c.
%output: all solutions to ax^2+bx+c=0.
%algorithm: quadratic formula

%input
a=1;
b=-5;
c=-6;

%algorithm: quadratic formula
x1=(-b+sqrt(b^2-4*a*c))/(2.0*a);
x2=(-b-sqrt(b^2-4*a*c))/(2.0*a);

x=zeros(2,1);

%output: all solutions to ax^2+bx+c=0.
x(1,1)=x1;
x(2,1)=x2;

fprintf('The two solutions are %f and %f.\n',x1,x2);
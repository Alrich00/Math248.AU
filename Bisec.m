%this program rreturns the iterates of the bisection method in order to
%approximate the roots of a given f(x) function

f=@(x) x.^2-2;
a=1;
b=2;
x=(a+b)/2;

for k=1:20
    
    if f(a)*f(x)<0
       b=x;
    elseif f(b)*f(x)<0
       a=x;
    elseif f(x)==o
        break;
    end
    
    x=(a+b)/2
    error=abs(sqrt(2)-x)
end

%dont use this method its donky butt and super slow.
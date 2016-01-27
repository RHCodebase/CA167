function res = other_newton(x,funct,derivative,epsilon)

while abs(funct(x))>epsilon
    x=x-funct(x)/derivative(funct(x));
end
res=x;
end

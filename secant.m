function [ result ] = secant(x0, x1, funct, epsilon)
% Write a MatLab function secant() that implements the Secant Method.
% The arguments to a call secant(x0,x1,funct,epsilon) of your function
% should have the following values:
% 1. x0 and x1 should be two approximations to the zero such that x0 ~= x1.
% 2. funct should be a MatLab function to compute the mathematical func-
% tion whose zeros you are trying to find.
% 3. epsilon should be a small value.
% secant() should retun a single value for the zero.
% Use your implementation of the Newton-Raphson Method to determine the
% zeros of the function f defined by:
% f(x) = x^3  3.17*x^2 - 4.835*x + 11.01
% Note that f has three real zeros.
% Submit your code in the file secant.m.

    functarg = str2func(funct);

    % There are a number of different approaches to deciding if an approximation x is sufficient.
    %The absolute difference between two successive values x_n and x_n-1 is
    %small: |x_n - x_n-1| < epsilon

    while (abs(x1 - x0) > epsilon)
        deriv_func = (functarg(x1)-functarg(x0))/(x1-x0);
        x0 = x1;
        x1 = x1 - functarg(x1)/deriv_func;
        
        
        fprintf('%d\n', x1);
    end;

    result = x1;
end


% >> test
% -1.942890e+000
% -2.012566e+000
% -1.999663e+000
% -1.999998e+000
% -2.000000e+000
% -2.000000e+000
% -2
% -2
% Secant Method: The result is -2.



% >> secant(3, 4, 'fun2', 0.0001)
% 3.503759e+000
% 3.637879e+000
% 3.673784e+000
% 3.669921e+000
% 3.670000e+000
% ans =
%     3.6700
% 
% >> secant(1, 4, 'fun2', 0.0001)
% -1.171429e+001
% 3.960710e+000
% 3.926938e+000
% 3.707242e+000
% 3.675300e+000
% 3.670123e+000
% 3.670000e+000
% 3.670000e+000
% ans =
%     3.6700
% 
% >> secant(1, 3, 'fun2', 0.0001)
% 1.887043e+000
% 6.126739e-001
% 1.537168e+000
% 1.501986e+000
% 1.499987e+000
% 1.500000e+000
% ans =
%     1.5000

function [result] = newton(x,funct,derivative,epsilon)
% Write a MatLab function newton() that implements the Newton-Raphson
% Method.
% The arguments to a call newton(x,funct,derivative,epsilon) of your
% function should have the following values:
% 1. x should be an initial guess of the zero.
% 2. funct should be a MatLab function to compute the mathematical func-
% tion whose zeros you are trying to find.
% 3. derivative should be a MatLab function to compute the derivative of
% mathematical function whose zeros you are trying to find.
% 4. epsilon should be a small value.
% newton() should retun a single value for the zero.
    functarg       = str2func(funct);
    deriv_functarg = str2func(derivative);

    x_prev = x;
    x      = x_prev - (functarg(x_prev)/deriv_functarg(x_prev));


    % There are a number of different approaches to deciding if an approximation x is sufficient.
    %The absolute difference between two successive values x_n and x_n-1 is
    %small: |x_n - x_n-1| < epsilon

    while (abs(x - x_prev) > epsilon)
        x_prev = x;
        x = x_prev - (functarg(x_prev)/deriv_functarg(x_prev));
        % fprintf('%d\n',x);
    end;
    result = x;
end

% >> res_newton = newton(3.0, 'fun1', 'deriv1', 0.1);
% 2.714670e+000

%======================================================================
% fun2.m
% ---------
% result = x*x*x - 3.17 * x*x - 4.835*x + 11.01;
%
% deriv2.m 
% --------
% result = 3*x*x - 3.17 *2* x - 4.835;
% 
% the roots are -2, 1.5, 3.67
%
% >> newton(3.0, 'fun2', 'deriv2', 0.1);
% 3.953539e+000
% 3.709779e+000
% 3.670969e+000
% >> fun(3.670000)
% ans =
%   1.7764e-015     is 1.7764 * 10^-15 which is almost zero.
   
% >> newton(1.0, 'fun2', 'deriv2', 0.1);
% 1.499982e+000

% >> newton(-4.0, 'fun2', 'deriv2', 0.1);
% -2.177176e+000
% -2.012894e+000
% -2.000076e+000
% >> fun(-2)
% ans = 0

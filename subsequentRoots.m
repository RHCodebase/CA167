function result = subsequentRoots(n)
  
           a    = 0.1;
           row  = 46.0;
           h    = 23.0;

           k    = 1 - ( (a*h)/row );

           n_minus_a_half = (n - 1/2);

           n_minus_a_half_squared = n_minus_a_half * n_minus_a_half;
      
           theta_n = n_minus_a_half * pi * (1 - (1/ (n_minus_a_half_squared*pi*pi*k*k) ) );
       
           initial_guess = theta_n;
      
           n_root = newton(initial_guess, 'fun3', 'deriv3', 0.0001);
           
           result = n_root;
end

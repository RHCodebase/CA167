function result = temperatureAtCentreOfSphere_tSeconds(t)
  
           a             = 0.1;
           a_squared     = a * a;
           row           = 46.0;
           h             = 23.0;
           alpha_squared = 0.000012;
           T_zero        = 250;
           
           T_zero_multby_a_h_over_row =  T_zero * ( (a*h)/row );
           
           %   t = 60;  % 0:60:3600
           
           sum_of_the_nth_roots = 0;
           
          for n = 1:1:10
       
                Beta_n_squared = Beta_n_squared_function(n)
                
                C_n = C_n_function(n)
                
                Beta_n_squared_multby_t = Beta_n_squared * t
                
                % C_n_topowerof_minus_Beta_n_squared_multby_t           =   C_n^-Beta_n_squared_multby_t
                % see Correction to Specification
                exp1_topowerof_minus_Beta_n_squared_multby_t            =   exp(1)^-Beta_n_squared_multby_t;
                C_n_multby_exp1_topowerof_minus_Beta_n_squared_multby_t =   C_n * exp1_topowerof_minus_Beta_n_squared_multby_t
                
                sum_of_the_nth_roots = sum_of_the_nth_roots + C_n_multby_exp1_topowerof_minus_Beta_n_squared_multby_t
                
           end
           
           Tc =  T_zero_multby_a_h_over_row * sum_of_the_nth_roots;
           
           result = Tc;
          
end

% >> temperatureAtCentreOfSphere_tSeconds(60)
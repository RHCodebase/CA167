function result = Beta_n_squared_function(n)

         a             = 0.1;
         a_squared     = a * a;
          
         alpha_squared = 0.000012;
            
         teta_n = subsequentRoots(n);
         
         Beta_n_squared = teta_n * (alpha_squared/a_squared);
         
         result = Beta_n_squared;
end
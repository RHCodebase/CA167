function result = C_n_function(n)

         teta_n = subsequentRoots(n);
         
         C_n_nom   = 4*sin(teta_n);
           
         two_teta_n = 2 * teta_n;
         
         C_n_denom = two_teta_n - sin(two_teta_n);
           
         C_n = C_n_nom / C_n_denom;
           
         result = C_n;
end
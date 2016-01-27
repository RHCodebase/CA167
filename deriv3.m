function result = deriv3(x)

       a    = 0.1;
       row  = 46.0;
       h    = 23.0;

       t1   = sec(x)^2;
       t2   = 1/(1- ( (a*h)/row) );

       fdashx  = t1 - t2;

       result = fdashx;
end 
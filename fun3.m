function result = fun3(x)

       a    = 0.1;
       row  = 46.0;
       h    = 23.0;

       t1   = tan(x);
       t2   = (1/(1- ( (a*h)/row) )) * x;

       fx  = t1 - t2;

       result = fx;
end 
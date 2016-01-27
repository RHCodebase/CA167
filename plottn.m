function plottn(tn)
   a    = 0.1;
   row  = 46.0;
   h    = 23.0;

   t1   = tan(tn);
   t2   = 1/(1- ( (a*h)/row) ) * tn;

   ftn  = t1 - t2;

   plot(tn,ftn);

end
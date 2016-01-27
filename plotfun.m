
pf = [];
pf_index = 1;

%for (i=1:0.0001:4)
%for (i=-10:0.0001:10)
for (x=-4:0.0001:6)    
   pf(pf_index) = fun1(x);

   pf_index = pf_index + 1;
end

%plot(1:0.0001:4, pf)
%plot(-10:0.0001:10, pf)
plot(-4:0.0001:6, pf)

pf = [];
pf_index = 1;

for (i=-4:0.0001:6) 
  pf(pf_index) = fun(i);
 
  if ( pf(pf_index) > 0 )
      firstroot = i;
      break
  end
   pf_index = pf_index + 1;
end


for (i=firstroot:0.0001:6)
  pf(pf_index) = fun(i);
  if ( pf(pf_index) < 0 )
      secondroot = i;
      break
  end
   pf_index = pf_index + 1;
end


for (i=secondroot:0.0001:6)
    
  pf(pf_index) = fun(i);
 
  
  if ( pf(pf_index) > 0 )
      thirdroot = i;
      break
  end
  
   pf_index = pf_index + 1;
end


firstroot
secondroot
thirdroot



% >>printroots
%   firstroot = 
%              -1.9999
%   
%   secondroot =
%               1.5000
%   
%   thirdroot =
%               3.6700






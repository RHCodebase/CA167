function result = newtonFindNumRoots(x_start, x_end,funct,derivative,epsilon )

      roots = [];
      i = 1;
      starting_point = x_start;
      
   
      while (starting_point <= x_end)
           
         one_root = newton(starting_point, funct, derivative, epsilon);
       
         one_root_3_decimal_places = myround(one_root,3);
         
         roots = [roots one_root_3_decimal_places];
      
         starting_point = starting_point + 0.1;
        
      end
  
      result = unique(roots);
      
end

% >> newtonFindNumRoots(-4.0, 4.0, 'fun2', 'deriv2', 0.001)
% ans =
%    -2.0000    1.5000    3.6700
% >> newtonFindNumRoots(0.2, 10.0, 'fun3', 'deriv3', 0.001)
% ans =
%   Columns 1 through 14
%    -0.3850    0.3850    4.5050    7.7320       NaN       NaN       NaN       NaN      
%      NaN       NaN       NaN       NaN       NaN       NaN
%   Columns 15 through 28




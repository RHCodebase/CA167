function printNumFrequency( V )

         num_frequency = zeros(1,10);
         V_length = length(V);
           
         i = 1;
           
         while (i <= V_length)      
                k  = V(i);
                num_frequency_index = floor(k/10) + 1;
                num_frequency(num_frequency_index) = num_frequency(num_frequency_index) + 1;
                i = i + 1;
         end
         num_frequency
           
         % print histogram (horizontally)
         for (i=0:1:9)       
                num1 = i*10;
                num2 = i*10+9;
        	    fprintf('%2d-%2d: ',num1, num2);
        	    for (j=1:1:num_frequency(i+1))
         		      fprintf('*'); 
                end
         	    fprintf('\n'); 
         end
end


% >>printNumFrequency
% ??? Input argument "V" is undefined.
% 
% Error in ==> printNumFrequency at 4
%          V_length = length(V);
%  

% >> printNumFrequency([5 6 12 14 23 41 56 78 93 18 56 39 33 37 44 67 62 81 77 96 97 99])
% 
% num_frequency =
% 
%      2     3     1     3     2     2     2     2     1     4
% 
%  0- 9: **
% 10-19: ***
% 20-29: *
% 30-39: ***
% 40-49: **
% 50-59: **
% 60-69: **
% 70-79: **
% 80-89: *
% 90-99: ****

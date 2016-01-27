function result = myround(num,n)

   ten_to_the_power_of_n = 10^n;

   b=num*ten_to_the_power_of_n ;

   c=round(b);

   result = c /ten_to_the_power_of_n ; 

end

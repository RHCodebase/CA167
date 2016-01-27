

temp = []
index_of_temp = 1;

for t=0:60:3600
    centre_temp =  temperatureAtCentreOfSphere_tSeconds(t);
    
    temp(index_of_temp)  = centre_temp;
    
    index_of_temp = index_of_temp + 1;
end

plot( 0:60:3600, temp ); 
xlabel('Seconds')
ylabel('Celsius')

% plotTemperatureAtCentre
    
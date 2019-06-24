/// @description 
spd = 1;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;
xaxis = 1;
yaxis = 0;
script_execute(place_wall);
xaxis = -1;
yaxis = 0;
script_execute(place_wall);
xaxis = 0;
yaxis = 1;
script_execute(place_wall);
xaxis = 0;
yaxis = -1;
script_execute(place_wall);
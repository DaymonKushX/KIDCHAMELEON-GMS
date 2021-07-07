if(place_meeting(x + xAxis, y, Solid)){
    while(!place_meeting(x + sign(xAxis), y, Solid)) x+=sign(xAxis)
    xAxis = 0;
}
x += xAxis;

if(place_meeting(x, y + yAxis, Solid)){
    while(!place_meeting(x, y + sign(yAxis), Solid)) y+=sign(yAxis)
    yAxis = 0;
}
y += yAxis;

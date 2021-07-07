// On the Air
if (!place_meeting(x,y+1, Solid) && (state == "running" || state == "stand" || state == "walking")){ state = "falling" }

// Falling
if state = "falling" 
{
    sprite_index = sprPlayerFalling;
    player_x_axis_moving();
    
    // Gravity
    if(yAxis < 7){
        yAxis+=grav;
    }else{
        yAxis = 7;
    }
    //
                
    // stop the falling -> switch to idle state
    if (place_meeting(x,y+yAxis, Solid)) { state = "stand" }
    if(image_index + image_speed >= image_number){
        image_index = image_number - 1;
    }
}

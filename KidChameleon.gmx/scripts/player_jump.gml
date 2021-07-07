if state = "jumping" {
    sprite_index = sprPlayerJump;
    
    player_x_axis_moving();
    // Gravity
    if(yAxis < 7){
        yAxis += grav;
    }
    
    if(yAxis == 0 || !key_jump_hold || place_meeting(x, y + yAxis, Solid)){
        state = "falling";
        if(place_meeting(x, y + yAxis, Solid)){
            while(!place_meeting(x, y + sign(yAxis), Solid)){
                yAxis += sign(yAxis);
            }
        }
        yAxis = 0;
    }
}

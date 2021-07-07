/// Correndo
if state = "running" 
{
    sprite_index=sprPlayerWallking;
        
    //if xAxis > speedRunning { xAxis = speedRunning; }
   // if xAxis < -speedRunning { xAxis = -speedRunning; }
    //if (key_left_hold){ xAxis-=speedRunning; }
    //if (key_right_hold){ xAxis+=speedRunning; }
    
    player_x_axis_moving();
                    
    // Formas de cancelar a caminhada
    //if (key_left_rele) or (key_right_rele) { state = "sliding"; }
    //if !(key_left_hold) and !(key_right_hold) { state = "sliding"; }
    if (key_jump) { 
        yAxis = -7; 
        state = "jumping" 
    }
    
    if(key_roll){ 
        xAxis = 4 * image_xscale;
        state = "rolling" 
    }
    if (place_meeting(x + xAxis, y, Solid)) {
        if(place_meeting(x + xAxis, y, Solid)){
            while(!place_meeting(x + sign(xAxis), y, Solid)){
                x += sign(xAxis);
            }
            xAxis = 0;
            state = "stand";
        }
    }else{
        if(xAxis == 0 && key_right_hold - key_left_hold == 0){
            if(key_run_hold){
                state = "sliding"; 
                slide_timer = 10;
            }else{
                state = "stand";
                xAxis = 0;
            }
        }   
    }
}

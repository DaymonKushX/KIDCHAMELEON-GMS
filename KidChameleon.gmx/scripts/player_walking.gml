/// Andando

if state = "walking" 
{
if (key_down_hold=false) { sprite_index=sprPlayerWallking; } else { sprite_index = sprPlayerWallkingCrouching; }
    image_speed = 0.5;       
    //if xAxis > speedNormal { xAxis = speedNormal; }
    //if xAxis < -speedNormal { xAxis = -speedNormal; }
    //if (key_left_hold){ xAxis-=speedNormal; }
    //if (key_right_hold){ xAxis+=speedNormal; }
    if(key_right_hold - key_left_hold != 0){
        image_xscale = key_right_hold - key_left_hold;
    }
    
    xAxis = (key_right_hold - key_left_hold) * speedNormal;
                
    // Formas de cancelar a caminhada
    if (key_left_rele) or (key_right_rele) { state = "sliding"; }
    if !(key_left_hold) and !(key_right_hold) { state = "sliding"; }
    if (key_jump) { yAxis = -7; state = "jumping" }
    if (key_run_hold) { state = "running" }
    if (nokey) { state = "stand" }
}

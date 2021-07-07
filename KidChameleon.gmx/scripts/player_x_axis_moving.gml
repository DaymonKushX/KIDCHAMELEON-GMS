if(key_right_hold - key_left_hold != 0){
    image_xscale = key_right_hold - key_left_hold;
}
if(key_run_hold){
    xAxis = (key_right_hold - key_left_hold) * speedRunning; 
    if(state == "running") image_speed = 1;   
}else{
    xAxis = (key_right_hold - key_left_hold) * speedNormal;
    if(state == "running") image_speed = 0.5;   
    
}


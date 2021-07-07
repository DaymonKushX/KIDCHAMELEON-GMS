if state = "stand" {
    sprite_index = sprPlayerIdle;
    xAxis = 0;
    // virar para a esquerda
    //if (key_left_hold) {
     //       state = "walking"
     //   }
    // virar para a direita
    //if (key_right_hold) {
    //    image_xscale = 1;
    //        state = "walking"
    //}
    
    if(key_right_hold - key_left_hold != 0){        
        image_xscale = key_right_hold - key_left_hold;
        if(!place_meeting(x + sign(speedNormal)* image_xscale, y, Solid)){
            state = "running";
        }
    }

    // PULANDO
    if (key_jump) { yAxis = -7; state = "jumping" }
    
    // ATIRANDO ou ATACANDO
    if (key_shoot) { shoot = true; }

}

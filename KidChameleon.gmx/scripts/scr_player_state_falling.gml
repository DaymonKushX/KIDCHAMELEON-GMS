///scr_player_state_falling()

   sprite_index = sprPlayerFalling;
   
    // Verifica se o player está tocando o chao
    // Se nao tiver tocando o chão a velocidade de queda aumenta
    if place_free(x,y+2) {gravity = grav_normal; gravity_direction = dir_down;}
    
    // Se tiver tocando ele para de cair
    if !place_free(x,y+2) or place_meeting(x,y+2,parentSolid)
    {gravity = 0; vspeed = 0; hspeed = 0; state = idle;}


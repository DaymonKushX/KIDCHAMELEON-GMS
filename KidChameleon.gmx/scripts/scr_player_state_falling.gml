///scr_player_state_falling()

// scr_player_plastic();

   sprite_index = sprPlayerFalling;
   
   // Contador para encerrar o pulo
fallingTimer ++
if fallingTimer == 1 {
    myObject = instance_create(x,y-32,objCollisionDown);
    myObject.myOwner = self.id;
    myObject.depth = self.depth-1;
    }

    // Verifica se o player está tocando o chao
    // Se nao tiver tocando o chão a velocidade de queda aumenta
    if place_free(x,y+2) {gravity = grav_normal; gravity_direction = dir_down;}
    
    // Se tiver tocando ele para de cair
    if !place_free(x,y+2) or place_meeting(x,y+2,parentSolid) {
        // Se o bloco nao for de borracha
        if !place_meeting(x,y+2,objBlockPlastic) { vspeed = 0; state = idle;}
        // Se o bloco for de borracha
        else if place_meeting(x,y+2,objBlockPlastic)
        {if KeyJumpHold {vInfluence=-7; state = jumping;}else{vInfluence=-3; state = jumping;}}
        
    fallingTimer = 0; gravity = 0; hspeed = 0;
    
    }

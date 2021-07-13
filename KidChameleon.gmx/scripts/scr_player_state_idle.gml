///scr_player_state_idle()

        if isCrouched == false {sprite_index = sprPlayerIdle;}
        else if isCrouched == true {sprite_index = sprPlayerIdleCrouched;}
    
        // Verifica se o personagem tem permissao para pular
        // E se a tecla Jump foi pressionada
        if (KeyJumpPressed and canJump and isCrouched==false) 
        {vInfluence = 0; hInfluence = 0; state = jumping;}
        
        // Verifica se o personagem tem permissao para agachar
        // E se a tecla Down foi pressionada
        if (KeyDownHold and canCrouched) {isCrouched = true;}
        if !(KeyDownHold) {isCrouched = false;}
        
        // Verifica se as teclas direcionais foram pressionadas e soltadas
        if (KeyRightPressed or KeyLeftPressed) {
            if image_xscale != dir {image_xscale=dir;}else{state=running;}}
        
        // Verifica se as teclas direcionais foram pressionadas e seguradas
        if (KeyRightHold or KeyLeftHold) {
            if image_xscale != dir {image_xscale=dir;}else{state=running;}}

///scr_player_state_running()

// Velocidade maxima
if (KeyRunHold) { maxSpeed=5; } else { maxSpeed=2; }

// Sprites subindo rampas muito ingrimes
if (runInSlopes) { isCrouched = false;
        if (dir=slopesDir){sprite_index = sprPlayerWallkingSlopeUp;}
        // Sprites descendo rampas muito ingrimes
        else if (dir!=slopesDir) {sprite_index = sprPlayerWallkingSlopeDown;}
    // Sprites caminhando por rampas comuns ou piso reto
    } else { if isCrouched == false {sprite_index = sprPlayerWallking;}
           // Sprites caminhando agachado por rampas comuns ou piso reto 
           else if isCrouched == true {sprite_index = sprPlayerWallkingCrouched;}}   


// Verifica se o personagem tem permissao para pular
// E se a tecla Jump foi pressionada
if (KeyJumpPressed and canJump and isCrouched==false) {
    if KeyRunHold {vInfluence = -4; hInfluence = 4;} state = jumping;}

// Ao soltar os direcionais para os lados
if (!KeyLeftHold and !KeyRightHold) {state = idle;}

// Ao soltar o direcional para baixo
if (!KeyDownHold) {isCrouched = false}

scr_move_to_direction(dir,maxSpeed)

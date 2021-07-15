///scr_player_state_running()

var jj = -3; // Influencia da corrida sobre o pulo (quanto maior o valor negativo maior o pulo)
var spd1 = 5; // Velocidade caminhando em pé
var spd2 = 7; // Velocidade correndo em pé
var spd3 = 3; // Velocidade caminhando agachado

// Velocidade maxima
if (KeyRunHold) { maxSpeed = spd2; } else { maxSpeed = spd1; }

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
    if KeyRunHold {vInfluence = jj; hInfluence = maxSpeed;} state = jumping;}

// Ao soltar os direcionais para os lados
if (!KeyLeftHold and !KeyRightHold) {state = idle;}

// Ao soltar o direcional para baixo
if (!KeyDownHold) {isCrouched = false}

if isCrouched == false { scr_move_to_direction(maxSpeed); }
    else if isCrouched {if place_free(x+(dir*spd3),y){x=x+(dir*spd3)}}

///scr_player_horizontal()

if !place_free(x,y+2)
    exit;
    
else if place_free(x,y+2) {
    // Movimento Horizontal
    if (KeyRightHold or KeyLeftHold) 
        && place_free(x+(dir*(maxSpeed)),y)
            { x = x + (dir*(maxSpeed)); }
}

/*
vInfluence => Influencia do botao de corrida sobre sobre o pulo
hInfluence => Influencia do botao de corrida sobre sobre o pulo
*/

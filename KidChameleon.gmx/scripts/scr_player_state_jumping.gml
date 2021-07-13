///scr_player_state_jumping()

sprite_index = sprPlayerJump;

jumpTimer ++
if jumpTimer >= 10 {jumpTimer = 0; state = falling;}

vspeed = -3 + (vInfluence);
if !place_free(x,y+vspeed){vInfluence=0; vspeed=0; state=falling;}
    
if place_free(x+(dir*(maxSpeed+hInfluence)),y){x=x+(dir*(maxSpeed+hInfluence));}

/*
vInfluence => Influencia do botao de corrida sobre sobre o pulo
hInfluence => Influencia do botao de corrida sobre sobre o pulo
*/

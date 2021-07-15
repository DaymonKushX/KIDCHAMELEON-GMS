///scr_player_state_jumping()

sprite_index = sprPlayerJump;

// Contador para encerrar o pulo
jumpTimer ++
if jumpTimer == 1 { 
    myObject = instance_create(x,y-32,objCollisionUp);
    myObject.myOwner = self.id;
    myObject.depth = self.depth-1;
    } 
    
if jumpTimer >= 10 {jumpTimer = 0; state = falling;}

var jumpSpeed = -5; // Velocidade do pulo
vspeed = jumpSpeed + (vInfluence);
if !place_free(x,y+vspeed){vInfluence = 0; vspeed = 0; state = falling;}

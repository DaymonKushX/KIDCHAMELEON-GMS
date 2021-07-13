///scr_player_init()

state = idle; // começa parado
vspeed = 0;
hspeed = 0;
jumpTimer = 0;
vInfluence = 0; 
hInfluence = 0; 
isCrouched = false;
canCrouched = false;
canJump = false;
canShoot = false;
canUpwardSlope = false;
global.Armor = object_index;

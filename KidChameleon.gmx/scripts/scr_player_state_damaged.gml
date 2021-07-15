///scr_player_state_damaged()

damageTimer ++
if damageTimer == 2 {image_blend=c_white;}
if damageTimer == 4 {image_blend=noone;}
if damageTimer == 6 {image_blend=c_white;}
if damageTimer == 8 {image_blend=noone;}
if damageTimer == 10 {image_blend=c_white;}
if damageTimer == 12 {image_blend=noone;}
if damageTimer == 14 {image_blend=c_white;}
if damageTimer == 16 {image_blend=noone;}
if damageTimer == 18 {damageTimer = 0; damage = false;}

///states_finalizados()
scr_player_get_keys();
// Direcoes
dir = KeyRightHold - KeyLeftHold;
if dir != 0 and state != damaged {image_xscale = dir; }
// Gravidade
if state != jumping {gravity=grav_normal; gravity_direction=dir_down; state=falling}
// Parado
if state == idle {scr_player_state_idle();}
// Correndo
if state == running {scr_player_state_running();}
// Pulando
if state == jumping {scr_player_state_jumping();}
// Rolando
if state == rolling {scr_player_state_rolling();}
// Damaged
if state == damaged {scr_player_state_damaged();}
// Atirando Machados
if state == shooting {scr_player_state_shoot();}
// Transformando
if state == transform {scr_player_state_transform();}
// Caindo
if state == falling {scr_player_state_falling();}

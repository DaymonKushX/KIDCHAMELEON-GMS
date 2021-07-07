// CONTROLS

key_jump_hold = keyboard_check(ord('S'));
key_shoot_hold = keyboard_check(ord('D'));
key_left_hold = keyboard_check(vk_left);
key_right_hold = keyboard_check(vk_right);
key_down_hold = keyboard_check(vk_down);
key_run_hold = keyboard_check(ord('A'));

key_jump = keyboard_check_pressed(ord('S'));
key_shoot = keyboard_check_pressed(ord('D'));
key_left = keyboard_check_pressed(vk_left);
key_right = keyboard_check_pressed(vk_right);
key_down = keyboard_check_pressed(vk_down);
key_run = keyboard_check_pressed(ord('A'));
key_roll = keyboard_check_pressed(ord('W'));

key_left_rele = keyboard_check_released(vk_left);
key_right_rele = keyboard_check_released(vk_right);
key_down_rele = keyboard_check_released(vk_down);

nokey  = keyboard_check(vk_nokey);

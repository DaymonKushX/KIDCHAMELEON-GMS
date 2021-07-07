if state = "rolling" {
    sprite_index = sprPlayerRolling;
    image_speed = 1;    
    if (image_index + image_speed >= image_number - 1) {
        state = "stand";
        xAxis = 0;
    }
}

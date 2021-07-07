if state = "sliding" {
    slide_timer-=1;
    xAxis += image_xscale * 0.1;
    sprite_index = sprPlayerSliding;
        
    if(slide_timer <= 0){
        state = "stand";
        xAxis = 0;
        slide_timer = 0;
    }
}


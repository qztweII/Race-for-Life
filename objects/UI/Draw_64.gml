var root = instance_find(Root, 0);

if (instance_exists(root)) {

    // Draw Hearts
    var heart_spacing = 80;
    var start_x = 20;
    var start_y = 20;

    for (var i = 0; i < Root.max_hp; i++) {
        
        if (i < Root.hp) {
            draw_sprite(FullHeart, 0, start_x + i * heart_spacing, start_y);
        } else {
            draw_sprite(EmptyHeart, 0, start_x + i * heart_spacing, start_y);
        }
    }

    // Draw Level
    draw_set_color(c_white);
    draw_text(20, 90, "Level: " + string(Root.level));
    
    // Optional: Draw Score smaller underneath
    draw_text(20, 110, "Points: " + string(Root.points));
}
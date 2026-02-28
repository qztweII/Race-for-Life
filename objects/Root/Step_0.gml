move_towards_point(mouse_x,mouse_y,4);

//Stamp
surface_set_target(draw_surf);
draw_sprite(sprite_index, image_index, x, y);
surface_reset_target(); 
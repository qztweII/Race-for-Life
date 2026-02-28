if (!surface_exists(draw_surf))
{
	draw_surf = surface_create(room_width, room_height);
	surface_set_target(draw_surf);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
	view_surface_id[0] = draw_surf;
}

move_towards_point(mouse_x,mouse_y,0.67);

//Stamp
surface_set_target(draw_surf);
draw_sprite(sprite_index, image_index, x, y);
surface_reset_target(); 


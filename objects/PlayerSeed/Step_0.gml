var dir =  point_direction(x, y, mouse_x, mouse_y);

hspeed += lengthdir_x(0.4, dir);
vspeed += lengthdir_y(0.4, dir);

hspeed *= 0.67;
vspeed *= 0.67;
if (dead) exit;
var dir =  point_direction(x, y, mouse_x, mouse_y);

hspeed += lengthdir_x(0.4, dir);
vspeed += lengthdir_y(0.4, dir);

hspeed *= 0.67;
vspeed *= 0.67;

function die()
{
    if (dead) return;
    
    dead = true;

    var cam = view_camera[0];

	var cam_x = camera_get_view_x(cam);
	var cam_y = camera_get_view_y(cam);
	var cam_w = camera_get_view_width(cam);
	var cam_h = camera_get_view_height(cam);

	var center_x = cam_x + cam_w / 2;
	var center_y = cam_y + cam_h / 2;

	instance_create_layer(center_x, center_y - 40, "Instances", GameOver);
	instance_create_layer(center_x, center_y + 40, "Instances", RestartButton);
	instance_create_layer(center_x, center_y + 120, "Instances", ExitButton);

    instance_destroy();
}

if (hp <= 0)
{
    die();
}
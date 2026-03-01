/// --- MOVEMENT ---
// Downward push
var down_dir = 270; // down in GameMaker
var down_x = lengthdir_x(downward_force, down_dir);
var down_y = lengthdir_y(downward_force, down_dir);

// Mouse influence
var dir = point_direction(x, y, mouse_x, mouse_y);
var mx = lengthdir_x(move_speed, dir);
var my = lengthdir_y(move_speed, dir);

// Combine movement
x += mx * 0.5 + down_x;
y += my * 0.5 + down_y;

// Rotate sprite toward movement direction
image_angle = dir+90;

/// --- ROOT TRAIL SPAWNING ---
// Place trail segments every trail_spacing pixels
var dist = point_distance(x, y, last_trail_x, last_trail_y);
if (dist >= trail_spacing)
{
    var trail_dir = point_direction(last_trail_x, last_trail_y, x, y);
    var new_x = last_trail_x + lengthdir_x(trail_spacing, trail_dir);
    var new_y = last_trail_y + lengthdir_y(trail_spacing, trail_dir);

    array_insert(trail, 0, [new_x, new_y]);

    last_trail_x = new_x;
    last_trail_y = new_y;

    // Limit trail length
    var trail_max = 40;
    while (array_length(trail) > trail_max)
        array_delete(trail, trail_max, 1);
}

/// --- CAMERA FOLLOW ---
var cam = view_camera[0];
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

// Center camera horizontally and slightly above the RootHead vertically
var target_x = x - cam_w / 2;
var target_y = y - cam_h / 3;

// Clamp camera to room bounds
target_x = clamp(target_x, 0, room_width - cam_w);
target_y = max(target_y, 0);

camera_set_view_pos(cam, target_x, target_y);

/// --- LEVEL UP AND HP GAIN ---
var new_level = floor(points / points_per_level) + 1;
if (new_level > level)
{
    level = new_level;

    // Only increase HP if below max
    if (hp < max_hp)
    {
        hp += 1;
    }

    // Growth effect
    image_xscale += 0.05;
    image_yscale = image_xscale;
}

/// --- BOSS SPAWN (optional) ---
if (points >= 1000 && !instance_exists(obj_boss))
{
    instance_create_layer(x, y + 800, "Instances", obj_boss);
}

/// --- INVINCIBILITY FLASH ---
if (invincible)
{
    invincible_timer--;
    image_alpha = 0.5;
    if (invincible_timer <= 0)
    {
        invincible = false;
        image_alpha = 1;
    }
}

/// --- HORIZONTAL BORDER CLAMPING ---
var border_width = 16; // Width of visible side tiles
x = clamp(x, border_width, room_width - border_width);

if (attack_cooldown > 0) attack_cooldown -= 1;
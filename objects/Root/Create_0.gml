move_speed = 3;
downward_force = 1.5;

max_hp = 3;
hp = 3;

points = 0;

level = 1;
points_per_level = 200;

trail_timer = 0;
trail_interval = 3;

trail_spacing = 64; // dis between roots
trail = [];
last_trail_x = x;
last_trail_y = y;

invincible = false;
invincible_timer = 0;
invincible_time = 60; // 1 second at 60fps

attack_cooldown = 0;
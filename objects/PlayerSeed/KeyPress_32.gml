var new_bullet = instance_create_layer(x, y, "Instances", Attack);
new_bullet.direction = point_direction(x, y, mouse_x, mouse_y); // Set its direction
new_bullet.speed = 5; // Set its speed
var target = instance_nearest(x, y, Root);

if (instance_exists(target)) {
    var dir = point_direction(x, y, target.x, target.y);
    x += lengthdir_x(move_speed, dir);
    y += lengthdir_y(move_speed, dir);
}

if (hp <= 0) {
    instance_destroy();
}
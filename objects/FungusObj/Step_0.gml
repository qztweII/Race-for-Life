var root = instance_find(Root, 0);

if (instance_exists(root))
{
    var dist = point_distance(x, y, root.x, root.y);

    // Reduce cooldown
    if (shoot_cooldown > 0)
        shoot_cooldown--;

    // If player is close → shoot
    if (dist < shoot_range)
    {
        speed = 0; // stop moving

        if (shoot_cooldown <= 0)
        {
            shoot_spores();
            shoot_cooldown = shoot_delay;
        }
    }
    else
    {
        // Normal chase behaviour
        move_towards_point(root.x, root.y, 1.5);
    }
}

function shoot_spores()
{
    var total_spores = 4; // number of directions
    var angle_step = 360 / total_spores;

    for (var i = 0; i < total_spores; i++)
    {
        var spore = instance_create_layer(x, y, "Instances", Spores);

        spore.direction = i * angle_step;
        spore.image_angle = spore.direction;
        spore.speed = 2;
    }
}

if (hp <= 0) {
    instance_destroy();
}
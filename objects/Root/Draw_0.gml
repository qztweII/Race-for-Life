draw_self();

if (array_length(trail) > 0)
{
    var first = trail[0];

    var head_dir = point_direction(x, y, first[0], first[1]) + 90;

    for (var i = 0; i < array_length(trail) - 1; i++)
    {
        var pos1 = trail[i];
        var pos2 = trail[i + 1];

        var dir = point_direction(pos1[0], pos1[1], pos2[0], pos2[1]) + 90;

        draw_sprite_ext(
            Roots,
            0,
            pos1[0],
            pos1[1],
            1, 1,
            dir,
            c_white,
            1
        );
    }
}
/// obj_spawner Step Event

// --- GET PLAYER ROOT ---
var root = instance_find(Root, 0);

// --- CAMERA INFO ---
var cam = view_camera[0];
var cam_y = camera_get_view_y(cam);
var cam_h = camera_get_view_height(cam);

// --- GENERATE NEXT CHUNK ---
if (cam_y + cam_h + 200 > next_chunk_y)
{
    // Spawn dirt chunk
    spawn_dirt_chunk(next_chunk_y);
    next_chunk_y += chunk_height_pixels;

    // --- SPAWN NUTRIENTS ---
    var downdis = (instance_exists(root)) ? root.y : 0;
    var nutrient_count = 5;

    for (var i = 0; i < nutrient_count; i++)
    {
        var spawn_x = random(room_width);
        var spawn_y = next_chunk_y + random(chunk_height_pixels);

        if (random(1) < 0.3)
            instance_create_layer(spawn_x, spawn_y, "Instances", Nutrient_Primary);
        else
            instance_create_layer(spawn_x, spawn_y, "Instances", Nutrient_Secondary);
    }

    // --- SPAWN BACTERIA ---
    var bacteria_count = 2 + floor(downdis / 1500);
    bacteria_count = clamp(bacteria_count, 2, 10);

    for (var i = 0; i < bacteria_count; i++)
    {
        var spawn_x = random(room_width);
        var spawn_y = next_chunk_y + random(chunk_height_pixels);

        instance_create_layer(spawn_x, spawn_y, "Instances", Bacteria);
    }

    // --- OPTIONAL BOSS SPAWN ---
    // if (instance_exists(root) && root.level >= 5 && !instance_exists(obj_boss))
    //     instance_create_layer(room_width/2, next_chunk_y + 400, "Instances", obj_boss);
}

// --- CLEANUP OBJECTS ABOVE CAMERA ---
var cleanup_line = cam_y - 300;

with (Nutrient_Primary)
{
    if (y < cleanup_line) instance_destroy();
}

with (Nutrient_Secondary)
{
    if (y < cleanup_line) instance_destroy();
}

with (Bacteria)
{
    if (y < cleanup_line) instance_destroy();
}
function spawn_dirt_chunk(y_pos) {

var start_row = floor(y_pos / tile_size);

for (var r = 0; r < rows_per_chunk; r++)
{
    for (var c = 0; c < cols_per_chunk; c++)
    {
        // Only use dirt tiles at index 1 and 2
        var tile_index = (random(1) < 0.35) ? 1 : 2;
        tilemap_set(dirt_tilemap, tile_index, c, start_row + r);

        // Solid collision block
        var tile_x = c * tile_size + tile_size / 2;
        var tile_y = (start_row + r) * tile_size + tile_size / 2;
        instance_create_layer(tile_x, tile_y, "Instances", obj_dirt_block);
    }
}
}
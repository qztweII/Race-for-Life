/// --- obj_spawner Create Event ---
tile_size = 64;
chunk_height_pixels = 640;
rows_per_chunk = chunk_height_pixels div tile_size;
cols_per_chunk = ceil(room_width / tile_size);

dirt_layer_id = layer_get_id("Tiles_Dirt");
dirt_tilemap = layer_tilemap_get_id(dirt_layer_id);

enemy_spawn_timer = 0;
enemy_spawn_interval = 120;
nutrient_spawn_timer = 0;
nutrient_spawn_interval = 180;

next_chunk_y = 384 + 16;
spawn_dirt_chunk(next_chunk_y);
next_chunk_y += chunk_height_pixels;
/// obj_spawner Create Event

// --- TILE & CHUNK SETTINGS ---
tile_size = 64;
chunk_height_pixels = 640; // 10 rows per chunk
rows_per_chunk = chunk_height_pixels div tile_size;
cols_per_chunk = ceil(room_width / tile_size);

// --- DIRT TILEMAP LAYER ---
dirt_layer_id = layer_get_id("Tiles_Dirt");
dirt_tilemap = layer_tilemap_get_id(dirt_layer_id);

// --- FORCE FIRST DIRT CHUNK ---
next_chunk_y = 384 + 16; // start below grass
spawn_dirt_chunk(next_chunk_y);
next_chunk_y += chunk_height_pixels;
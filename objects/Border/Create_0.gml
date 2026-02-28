var border_width = 16; // thickness in pixels

// Left border
instance_create_layer(border_width/2, room_height/2, "Instances", Border);

// Right border
instance_create_layer(room_width - border_width/2, room_height/2, "Instances", Border);
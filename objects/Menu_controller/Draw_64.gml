draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// ---- TITLE ----
draw_set_font(-1); // default font
draw_set_color(c_white);
draw_text(room_width/2, room_height/3, title_text);

// ---- PLAY BUTTON ----
draw_set_color(c_green);
draw_rectangle(
    room_width/2 - button_width/2,
    button_play_y - button_height/2,
    room_width/2 + button_width/2,
    button_play_y + button_height/2,
    false
);

draw_set_color(c_white);
draw_text(room_width/2, button_play_y, "PLAY");

// ---- QUIT BUTTON ----
draw_set_color(c_maroon);
draw_rectangle(
    room_width/2 - button_width/2,
    button_quit_y - button_height/2,
    room_width/2 + button_width/2,
    button_quit_y + button_height/2,
    false
);

draw_set_color(c_white);
draw_text(room_width/2, button_quit_y, "QUIT");
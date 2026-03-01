var mx = mouse_x;
var my = mouse_y;

// Play Button Bounds
var play_left   = room_width / 2 - button_width / 2;
var play_right  = room_width / 2 + button_width / 2;
var play_top    = button_play_y - button_height / 2;
var play_bottom = button_play_y + button_height / 2;

// Quit Button Bounds
var quit_left   = room_width / 2 - button_width / 2;
var quit_right  = room_width / 2 + button_width / 2;
var quit_top    = button_quit_y - button_height / 2;
var quit_bottom = button_quit_y + button_height / 2;

// Mouse Click
if (mouse_check_button_pressed(mb_left)) {
    // Play Click
    if (mx > play_left && mx < play_right && my > play_top && my < play_bottom) {
        room_goto(MainGame); // Replace with your MainGame room
		audio_play_sound(Music, 10, true);
    }

    // Quit Click
    if (mx > quit_left && mx < quit_right && my > quit_top && my < quit_bottom) {
        game_end();
    }
}
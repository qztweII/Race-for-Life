with (Root) {
    
    if (!invincible) {
        hp -= 1;
        
        invincible = true;
        invincible_timer = invincible_time;
        
        if (hp <= 0) {
			audio_play_sound(GameOver, 10, false);
            show_message("The seed has died...");
            game_restart();
        }
    }
}

instance_destroy();
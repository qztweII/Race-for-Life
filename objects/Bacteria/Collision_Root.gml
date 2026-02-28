with (Root) {
    
    if (!invincible) {
        hp -= 1;
        
        invincible = true;
        invincible_timer = invincible_time;
        
        if (hp <= 0) {
            // Game Over ~ more logic here evetually add buttons.
            show_message("The seed has died...");
            game_restart();
        }
    }
}

instance_destroy();
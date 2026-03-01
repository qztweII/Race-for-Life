/// Fire attack on Space
if (attack_cooldown <= 0) {

    var attack_inst = instance_create_layer(
        x + lengthdir_x(32, image_angle-90),
        y + lengthdir_y(32, image_angle-90),
        "Instances",
        Attack
    );

    attack_inst.direction = image_angle - 90;
    attack_inst.image_angle = attack_inst.direction;

    attack_cooldown = 60; // cooldown (~0.25s at 60fps)
	audio_play_sound(AttSound, 10, false);
}
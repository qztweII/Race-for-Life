/// --- Move the projectile ---
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

life -= 1;
if (life <= 0) {
    instance_destroy();
}

/// --- Collision with enemies ---
// Check Bacteria
var hit_bacteria = instance_place(x, y, Bacteria);
if (hit_bacteria != noone) {
    hit_bacteria.hp -= 1; // subtract HP from bacteria
    instance_destroy();    // destroy the attack on hit
}

// Check Fungi
var hit_fungi = instance_place(x, y, FungusObj);
if (hit_fungi != noone) {
    hit_fungi.hp -= 1; // subtract HP from fungi
    instance_destroy(); // destroy attack on hit
}
 /// @description configuracion de enemigo
randomize();
sprite_index = enemigo;
image_speed = 0;

// movimiento aleatorio del enemigo

v = 4;
direction = choose (0,90,180,270); // choose elige direccion aleatorio
motion_set(direction, v); //motion_set da movimiento

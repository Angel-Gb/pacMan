/// @description termnar efecto de poder

if (global.power) exit;
with(obj_enemy)
	{
	image_speed = 0;
	sprite_index = enemigo;
	image_index = col;
	speed = 4;
	v = 4;
	}

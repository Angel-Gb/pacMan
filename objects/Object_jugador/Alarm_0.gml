/// @description cuando el poder se esta acabando
global.power = false;
with(obj_enemy)
	{
	if sprite_index == enemigo_asustado
	image_speed = 1;
	}

alarm [1] = room_speed*3;
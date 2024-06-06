/// @description obtiene el punto de poder
alarm [0] = room_speed*5;
global.puntos += 50;
global.power = true;

audio_play_sound(snd_comiendo,10,false);

with(obj_enemy)
	{
	sprite_index = enemigo_asustado;
	image_speed = 0;
	image_index = 0;
		
	v = 2;
	speed = 2;
	};
	

with(other)
	{
	instance_destroy();
	}
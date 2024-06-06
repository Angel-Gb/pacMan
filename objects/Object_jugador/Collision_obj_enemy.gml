/// @description colision / colision con power

if (other.sprite_index == enemigo_asustado)
	{
	global.puntos += 200;
	audio_play_sound(snd_enemy_kill,10,false);
	// with other = al objeto con el que colisiona: enemigo
	with (other)
		{
		x = xstart; // regresa a la posicion inical donde se creo
		y = ystart;
		v = 4;
		speed = v;
		sprite_index = enemigo;
		image_index = col;
		image_speed = 0;
		}
	}
else
if !(global.golpe) && (x = other.x or y = other.y)
	{
	audio_stop_all();
	audio_play_sound(snd_dead,10,false);
	
// reiniciar velocidad del nivel

	room_speed = 50;
	obj_control.alarm [1] = room_speed*15;
	
	speed = 0;
	global.vidas -=1;
	sprite_index = pacMan_muerte;
	image_speed = 1;
	global.golpe = true;
	
	
	with (obj_bono)
		{
		instance_destroy();
		};
	}
	
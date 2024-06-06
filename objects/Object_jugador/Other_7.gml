/// @description verifica animacion muerte
// reinicia pacman desde la posicion inicial 

if	sprite_index == pacMan_muerte
	{
	direction = 0;
	image_speed = 0;
	x = xstart;
	y = ystart;
	sprite_index = pacMan_derech;
	image_index = 0;
	
	global.golpe = false;
	
	audio_play_sound(snd_intro,10,false);
	instance_deactivate_object(obj_enemy);
	
	}

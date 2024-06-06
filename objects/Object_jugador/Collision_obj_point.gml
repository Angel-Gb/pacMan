/// @description comer puntos
global.puntos += 10; // modifica la variable puntos del obj_puntos

audio_play_sound(snd_comiendo,10,false);

//destruye el obj_point
with(other)
	{
	instance_destroy();
	}

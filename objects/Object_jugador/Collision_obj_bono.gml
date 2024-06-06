/// @description obtener bono
global.puntos += 500;
global.bonos = true;

audio_play_sound(snd_bono,10,false);

with(other)
	{
	instance_destroy();
	}

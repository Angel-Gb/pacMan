  /// @description movimientos del pacman
if (global.golpe)or audio_is_playing(snd_intro) exit;

// aqui verifico si estoy apretando la tecla y es V se eejcuta
if keyboard_check (vk_right) && place_free(x+1,y) && place_snapped(32,32)
	{
		direction = 0; // en °
		speed = v;
	}

if keyboard_check (vk_left) && place_free(x-1,y) && place_snapped(32,32)
	{
		direction = 180;
		speed = v;
	}

if keyboard_check (vk_up) && place_free(x,y-1) && place_snapped(32,32)
	{
		direction = 90;
		speed = v;
	}
	
if keyboard_check (vk_down) && place_free(x,y+1) && place_snapped(32,32)
	{
		direction = 270;
		speed = v;
	}	
	
//aqui verifica direccion y v para cambiar el sprite

if speed > 0
	{
		image_speed = 1;
	}
else
	{
		image_speed = 0;
		image_index = 0; 
	}

switch(direction)
	{
	case 0:
	sprite_index = pacMan_derech;
	break;
	
	case 90:
	sprite_index = pacMan_arriba;
	break;
	
	case 270:
	sprite_index = pacMan_abajo;
	break;
	
	case 180:
	sprite_index = pacMan_izq;
	break;
	}
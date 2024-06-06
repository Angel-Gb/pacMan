/// @description controlar nivel

// activar enemigos de nuevo

if !(audio_is_playing(snd_intro))
	{
	instance_activate_object(obj_enemy)
	}
	
// destruye todo cuando gasta todas la vidas

if global.vidas ==0
	{
	with(obj_enemy)
		{
		instance_destroy();
		
		};
	with(Object_jugador)
		{
		instance_destroy();	
		};
		
	with(obj_point)
		{
		instance_destroy();	
		};
		
	with(obj_powerpoint)
		{
		instance_destroy();	
		};
	
	with(obj_bono)
		{
		instance_destroy();	
		};
	
	}
	
// verifica si el nivel es completo o pac muere

if instance_number(obj_point) == 0 and instance_number(obj_powerpoint) == 0 && global.vidas !=0
	{
	if room_next(room) !=1
		{
		audio_stop_all();
		room_goto_next();
		}
	else 
		{
		audio_stop_all();
		room_goto(rm_level_2);
		instance_destroy();
		}
	}
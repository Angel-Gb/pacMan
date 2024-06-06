/// @description IA
// reinicia enemigo cuando el pacman pierda 1 vida
if global.golpe
	{
	speed = 0;
	vspeed = 0;
	hspeed = 0;
	visible = false;
	
	x = xstart;
	y = ystart;
	exit;
	}
else
	{
	 visible = true;
	}


if place_snapped(64,64)
	{
		if hspeed == 0 //pregunta la V horizontal
			{
				if random(3) < 1 && place_free(x-1,y) // izq
				{
					hspeed = -v;
					vspeed = 0;
				}
				if random(3) < 1 && place_free(x+1,y) // dere
				{
					hspeed = v;
					vspeed = 0;
				}
			}
		else
			{
			if random(3) < 1 && place_free(x,y-1) // arriba
				{
					hspeed = 0;
					vspeed = -v;
				}
			if  random(3) < 1 && place_free(x,y+1) // abajo
			{
				hspeed = 0;
				vspeed = v;
			}	
		}
			
	} 
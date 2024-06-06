/// @description cuando colisiona, cambia de direccion

hspeed = -hspeed;
vspeed = -vspeed;
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
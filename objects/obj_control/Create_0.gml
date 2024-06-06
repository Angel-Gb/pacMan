/// @description variables juego
audio_play_sound(snd_intro,10,false);
instance_deactivate_object(obj_enemy); //detiene enemigos
global.puntos = 0;
global.vidas = 3;
global.power = false;
global.bonos = false;
global.golpe = false;

alarm [0] = room_speed*10; //crea bono
alarm [1] = room_speed*15; // nivel mas rapido



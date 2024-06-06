/// @description Nivel comienza de nuevo

if room == rm_level_1 exit;

audio_play_sound(snd_intro,10,false);
instance_deactivate_object(obj_enemy);

global.golpe= false;
global.power = false;
global.bonos = false;

alarm [0] = room_speed*10; // crea bonus
alarm [1] = room_speed*15;
room_speed = 50;



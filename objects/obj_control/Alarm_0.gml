/// @description crear bono

if global.vidas == 0 exit;

instance_create_layer(Object_jugador.xstart,Object_jugador.ystart,"ly_top",obj_bono);
alarm [0] = room_speed*30;


/// @description dibuja los puntos y vida

// texto de los puntos
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_texto);
draw_text(32,16,"SCORE: "+string(global.puntos)); // dibuja los puntos que va ganado frente al string score

//dibujar las vidas
draw_text(room_width/2,16,"VIDAS: ");
//loop para dinujar vidas con sprite
for (var i=0; i < global.vidas; i += 1)
	{
	draw_sprite_stretched(pacMan_derech, 2, room_width/2+string_width("VIDAS: ")+(i*33),16,32,32);	
	}
	
//dibujar la palabra READY

if (audio_is_playing(snd_intro))
	{
	draw_set_color(c_yellow);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_ready);
	
	draw_text(room_width/2+128, room_height/2+8, "Ready!")
	}

// dibujar cuando toma el bono

if (global.bonos)
	{
	draw_sprite(spr_bonus,0,room_width-64,0);	
	} 
	
// dibuja el gameover

if (global.vidas == 0)
	{
	draw_set_color(c_red);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_ready);
	draw_text(room_width/2, room_height/2, "Game Over");
	}
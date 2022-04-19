/// @description Stats

shader_set(Bloom);

shader_set_uniform_f(handler,value);
draw_surface(application_surface,0,0);

shader_reset();

//Draw Stats
draw_sprite(spr_health_background,0,20,8);
draw_sprite_stretched(spr_health_pip,0,20,8,hp,14)
draw_sprite_stretched(spr_health_background,0,20,27,stamina,6)
draw_sprite_stretched(spr_stamina_pip,0,20,27,stamina,6);
draw_sprite(S_HUD,0,healthbar_x,healthbar_y);

	





switch (SwordSwings) {
	case 0: draw_sprite(spr_HUD_SwordSwings,3,SwordStat_x,SwordStat_y);	
	case 1: draw_sprite(spr_HUD_SwordSwings,2,SwordStat_x,SwordStat_y);	
	case 2: draw_sprite(spr_HUD_SwordSwings,1,SwordStat_x,SwordStat_y);	
	case 3: draw_sprite(spr_HUD_SwordSwings,0,SwordStat_x,SwordStat_y);	
}
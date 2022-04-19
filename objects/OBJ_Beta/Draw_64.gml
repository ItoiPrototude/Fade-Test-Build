/// @description Stats

shader_set(Bloom);

shader_set_uniform_f(handler,value);
draw_surface(application_surface,0,0);

shader_reset();

switch (hpmax) {
	case 0: draw_sprite(S_HUDhealthBeta,7,healthbar_x,healthbar_y);
	break;
}

switch (hp) {
	case 0: draw_sprite(S_HUDhealthBeta,7,healthbar_x,healthbar_y);
	break;
	case 1: draw_sprite(S_HUDhealthBeta,6,healthbar_x,healthbar_y);
	break;
	case 2: draw_sprite(S_HUDhealthBeta,5,healthbar_x,healthbar_y);
	break;
	case 3: draw_sprite(S_HUDhealthBeta,4,healthbar_x,healthbar_y);
	break;
	case 4: draw_sprite(S_HUDhealthBeta,3,healthbar_x,healthbar_y);
	break;
	case 5: draw_sprite(S_HUDhealthBeta,2,healthbar_x,healthbar_y);
    break;
    case 6: draw_sprite(S_HUDhealthBeta,1,healthbar_x,healthbar_y);
    break;
	case 7: draw_sprite(S_HUDhealthBeta,0,healthbar_x,healthbar_y);
    break;
}



	



switch (Medkits) {
	case 0: draw_sprite(S_HUDmedkitsBeta,1,Medinventory_x,Medinventory_y);
	break;
	case 1: draw_sprite(S_HUDmedkitsBeta,0,Medinventory_x,Medinventory_y);
	break;
}



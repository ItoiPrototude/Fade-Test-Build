/// @description Setup Cursor
//Get Inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

//Store number of options in menu
op_length = array_length(option[menu_level]);
//Move through menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1};

//Using the options
	if accept_key {
	
	var _sml = menu_level;
	
	switch menu_level{
	//pause menu
	case 0:
	switch(pos){
		//start game
		case 0: room_goto_next(); break;
		//settings
		case 1: menu_level = 1 break;
		//quit game
		case 2: game_end(); break;
	       }
	break;

		//settings
		case 1:
        switch(pos){
		case 0:
		//window
		break;
		case 1:
		//credits
		break;
		case 2:
		//controls
		
		break;
		case 3:
		//back
		menu_level = 0
		break;
		}
	}

if _sml != menu_level {pos = 0};

//correct option length
op_length = array_length(option[menu_level]);
}
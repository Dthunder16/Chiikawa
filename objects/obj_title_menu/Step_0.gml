//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

//move through the menu
pos += down_key - up_key;

//loop through the menu -> when you go over limit then go down
if(pos >= op_length) pos = 0;
else if(pos < 0) pos = op_length - 1

//using the options
if(accept_key) {
	switch(pos){
		case 0: //Start Game
			room_goto(rm_game);
			break;
		
		case 1: //Settings
			break;
		
		case 2: //Quit
			game_end();
			break;
	
}
}

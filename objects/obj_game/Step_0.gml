/// @desc 
if(keyboard_check_pressed(vk_enter)){
	switch(room){
	case rm_start:
		room_goto(rm_game);
		break;
		
	case rm_win:
	case rm_gameover:
		game_restart();
		break;
	}
		
}

if(keyboard_check_pressed(vk_delete)){
	global.sound_on = !global.sound_on;
}

if (room == rm_game){
	/*
	if(score >= max_score){
		room_goto(rm_win);
	}
	*/
	if(lives <= 0){
		room_goto(rm_gameover);
	}
}


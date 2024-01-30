/// @collision
lives-= 1;


audio_play_sound(snd_die, 1, false);
if (!global.sound_on){
	audio_pause_all();
}
	
instance_destroy(obj_ship);

repeat(10){
	instance_create_layer(x,y, "Instances", obj_debris);
}
//room_goto(rm_game);



//score = 0
//start_again = 1

//alarm_set(1, room_speed * 1)
instance_destroy(obj_asteroid);

repeat(30){
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width)
		);
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height)
		);
		instance_create_layer(xx,yy, "Instances",obj_asteroid);
	}

if (lives != 0){
	time_source = time_source_create(time_source_game, 2, time_source_units_seconds, function()
	{
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_ship);
	}, []);

	time_source_start(time_source);
}
/// @desc 
var sound = choose(
	snd_game1, snd_game2, snd_game3, 
	snd_game4, snd_game5, snd_game6, 
	snd_game7, snd_game8, snd_game9
);

if (room == rm_game){
	audio_play_sound(sound, 1, true);
	repeat(asteroid_number){
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
	
	alarm[0] = 60;
}



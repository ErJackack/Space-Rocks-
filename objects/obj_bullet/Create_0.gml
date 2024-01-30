/// @desc 

speed = 6;

audio_play_sound(snd_shoot, 1, false);
if (!global.sound_on){
	audio_pause_all();
}
/// @movement of the ship
speed_inc = 0.03;
rotation_speed=5;


if(keyboard_check(vk_left)){
	image_angle += rotation_speed;	
}

if(keyboard_check(vk_right)){
	image_angle -= rotation_speed;	
}

if(keyboard_check(vk_up)){
	motion_add(image_angle, speed_inc);
}

move_wrap(true, true, sprite_width/2);
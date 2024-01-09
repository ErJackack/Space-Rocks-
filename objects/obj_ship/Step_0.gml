/// @movement of the ship



if(keyboard_check(vk_left)){
	image_angle += rotation_speed;	
}

if(keyboard_check(vk_right)){
	image_angle -= rotation_speed;	
}

if(keyboard_check(vk_up)){
	if(speed<0 && image_angle + 90 > 0){
		motion_add(image_angle, 5*speed_inc);
	}
	motion_add(image_angle, speed_inc);
}

if(keyboard_check(vk_down)){
	motion_add(image_angle, -speed_inc);
}

if(keyboard_check(vk_space)){
	if(bullet_cycle == 0){
		var inst = instance_create_layer(x,y, "Instances", obj_bullet);
		inst.direction = image_angle;
		bullet_cycle = bullet_cycle_end;
	}
	bullet_cycle-=1
}
else{
	bullet_cycle = 0;
}
move_wrap(true, true, sprite_width/2);
/// @movement of the ship



if(keyboard_check(ord("A"))){
	image_angle += rotation_speed;	
}

if(keyboard_check(ord("D"))){
	image_angle -= rotation_speed;	
}

if(keyboard_check(ord("W"))){
	motion_add(image_angle, speed_inc);
}

if(keyboard_check(ord("S"))){
	motion_add(image_angle, -speed_inc);
}

if(keyboard_check(vk_enter)){
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

/*
if(keyboard_check_pressed(vk_enter)){
	if(start_again == 1){
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_ship);
	}
}
*/
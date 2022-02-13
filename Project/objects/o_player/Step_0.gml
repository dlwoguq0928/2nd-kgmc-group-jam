/// @description Insert description here
// You can write your code in this editor
var horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var vertical   = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var moveDir = point_direction(0,0,horizontal,vertical);

if ( abs(horizontal)+abs(vertical) > 0 ){
	vx += (lengthdir_x(max_velocity, moveDir)-vx)*0.9;
	vy += (lengthdir_y(max_velocity, moveDir)-vy)*0.9;
	
	imgStruct.img_rot = sin(current_time/50)*20;
	imgStruct.img_yps = -abs(sin(current_time/50)*16);
	
	imgStruct.face = (vx == 0) ? imgStruct.face : sign(vx);
}else{	
	vx -= fric*sign(vx);
	vy -= fric*sign(vy);
	
	vx = sign(vx)*max(abs(vx)-spd_threshold, 0);
	vy = sign(vy)*max(abs(vy)-spd_threshold, 0);
}

x += vx;
y += vy;


//prevent going outside
PreventOutside()

if (keyboard_check_pressed(vk_space)){
	var inst = instance_nearest(x,y,o_tools);
	var dist = point_distance(x,y,inst.x,inst.y);
	
	if ( dist <= 64 && inst != my_tool ){
		my_tool = inst;
	}else if ( my_tool != noone ){
		my_tool.imgStruct.img_yps = 0;
		my_tool = noone;
	}
}

if ( my_tool != noone ){
	my_tool.x = x + imgStruct.face * 32;
	my_tool.y = y + 12;
	my_tool.imgStruct.img_yps = imgStruct.img_yps-12;
	my_tool.imgStruct.img_rot = imgStruct.img_rot;
	
	my_tool.imgStruct.face = imgStruct.face;
}
		
	



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
	
	image_xscale = (vx == 0) ? image_xscale : sign(vx);  //이미지 좌우방향
	
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

//surface process

surface_set_target(global.SURF.outlineSurf.surf);

	draw_sprite_ext(sprite_index, 0, 
		x+imgStruct.img_xps-global.CAMERA.view_x, y+imgStruct.img_yps-global.CAMERA.view_y, 
		image_xscale*imgStruct.img_xsc, 
		image_yscale*imgStruct.img_ysc, 
		image_angle+imgStruct.img_rot, 
		image_blend,imgStruct.img_opa
	);
	
surface_reset_target();


//pick up a tool
if keyboard_check_pressed(vk_space) {
	var inst = instance_nearest(x,y,o_tools);
	var dist = point_distance(x,y,inst.x,inst.y);
	if (dist <= 64) 
	and (inst != my_tool) {
		my_tool = inst;
	} 
	else if (my_tool != noone)
	{
		my_tool = noone;
	}
}

//carrying a tool
if (my_tool != noone)
{
	my_tool.y = y;
	my_tool.x = x + image_xscale*32;
	my_tool.image_xscale = image_xscale;
}
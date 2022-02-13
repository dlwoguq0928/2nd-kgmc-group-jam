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
/*
global.outlineSurf.draw_on( function(){
	draw_sprite_ext(sprite_index, 0, 
		x+imgStruct.img_xps-global.CAMERA.view_x, y+imgStruct.img_yps-global.CAMERA.view_y, 
		image_xscale*imgStruct.img_xsc, 
		image_yscale*imgStruct.img_ysc, 
		image_angle+imgStruct.img_rot, 
		image_blend,imgStruct.img_opa);
});
*/



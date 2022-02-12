// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Camera(camera, width, height) constructor{
	cam_use = camera;
	
	original_w = width;
	original_h = height;
	
	target_x = 0;
	target_y = 0;
	target_w = 0;
	target_h = 0;
	
	cam_x = 0;
	cam_y = 0;
	cam_w = 0;
	cam_h = 0;
	
	view_x = 0;
	view_y = 0;
	
	cam_set_target_obj = function(obj){
		if ( instance_exists(obj) ){
			target_x = obj.x;
			target_y = obj.y;
		}
	}
	cam_set_target_pos = function(_x,_y){
		target_x = _x;
		target_y = _y;
	}
	cam_set_target_size = function(w,h){
		target_w = w;
		target_h = h;
	}
	cam_getpos = function(){
		return [cam_x-cam_w/2,cam_y-cam_h/2];
	}
	
	cam_init = function(){
		target_w = original_w;
		target_h = original_h;
		cam_w = original_w;
		cam_h = original_h;
	}
	cam_update = function(){
		cam_x += (target_x - cam_x) * 0.5;
		cam_y += (target_y - cam_y) * 0.5;
		cam_w += (target_w - cam_w) * 0.5;
		cam_h += (target_h - cam_h) * 0.5;
		
		view_x = round(cam_x-cam_w*.5);
		view_y = round(cam_y-cam_h*.5);
		
		camera_set_view_size(cam_use,cam_w,cam_h);
		camera_set_view_pos(cam_use,view_x,view_y);
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PreventOutside(){
	//prevent going outside
	var spr_w = sprite_get_width(sprite_index);
	var spr_h = sprite_get_height(sprite_index);
	x = median(0+spr_w/2,x,room_width-spr_w/2);
	y = median(0+spr_h/2,y,room_height-spr_h/2);
}
/// @description Insert description here
// You can write your code in this editor
surface_set_target(entitySurf.surf);

with(o_Entity){
	draw_sprite_ext(sprite_index, 0, 
	x+imgStruct.img_xps - global.CAMERA.view_x, y+imgStruct.img_yps - global.CAMERA.view_y, 
	image_xscale*imgStruct.img_xsc, 
	image_yscale*imgStruct.img_ysc, 
	image_angle+imgStruct.img_rot, 
	image_blend,imgStruct.img_opa
	);
}

surface_reset_target();

surface_copy(outlineSurf.surf,0,0,entitySurf.surf);
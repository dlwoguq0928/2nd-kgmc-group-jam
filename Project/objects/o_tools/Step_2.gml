/// @descr 

//surface process
surface_set_target(global.SURF.outlineSurf.surf);

	draw_sprite_ext(sprite_index,image_index,
		round(x)-global.CAMERA.view_x,round(y)-global.CAMERA.view_y,
		image_xscale,image_yscale,image_angle,image_blend,image_alpha);

surface_reset_target();
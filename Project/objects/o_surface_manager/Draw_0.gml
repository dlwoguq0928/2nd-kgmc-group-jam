/// @description Insert description here
// You can write your code in this editor
draw_surface(shadowSurf.surf,global.CAMERA.view_x,global.CAMERA.view_y);

shader_set(shd_outline);
shader_set_uniform_f(size, global.CAMERA.cam_w, global.CAMERA.cam_h);
draw_surface(outlineSurf.surf, global.CAMERA.view_x, global.CAMERA.view_y);
shader_reset();

draw_surface(entitySurf.surf,global.CAMERA.view_x,global.CAMERA.view_y);

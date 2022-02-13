/// @description Insert description here
// You can write your code in this editor

/////////original surf.//////////
entitySurf = new SurfaceStruct(global.CAMERA.cam_w, global.CAMERA.cam_h);

/////////////////////////////////
outlineSurf = new SurfaceStruct(global.CAMERA.cam_w, global.CAMERA.cam_h);
size = shader_get_uniform(shd_outline,"size");

shadowSurf = new SurfaceStruct(global.CAMERA.cam_w, global.CAMERA.cam_h);


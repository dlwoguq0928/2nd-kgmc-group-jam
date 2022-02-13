/// @descr
global.CAMERA = new Camera(view_camera[0], 683, 384);
global.CAMERA.cam_init();

global.SURF = instance_create_depth(0,0,0,o_surface_manager);

gv = {
	time: 0,  //게임 시간 (초)
	time_max: 86400*7,  //제한 시간 (86400 x 일)
}


//initialize the variable : tool
enum tool {
	kettle,  //물뿌리개
	hoe, //괭이
	basket,  //바구니
}

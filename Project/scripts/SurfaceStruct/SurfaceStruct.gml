// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SurfaceStruct(w,h) constructor{
	width = w;
	height = h;
	surf = surface_create(width,height);
	
	keep = function(){
		if (!surface_exists(self.surf)){
			surf = surface_create(width,height);
		}
	}
	
	reset = function(col, alpha){
		surface_set_target(self.surf);
			draw_clear_alpha(col,alpha);
		surface_reset_target();
	}
	free = function(col, alpha){
		surface_free(self.surf);
	}
}

/// @description 

if(!active){
	exit;	
}


obj_ui_inventory_controller.active = keyboard_check(vk_space)


with(par_popup){
	if(active){
		exit;	
	}
}


//matrix mouse position
var distance = -1;

with(global.player){
	for(var i = 0; i<length; i++){

		var px = rotate_around_point(16+(gridX[i]*32),16+(gridY[i]*32),sprite_xoffset,sprite_yoffset,dir,"x");
		var py = rotate_around_point(16+(gridX[i]*32),16+(gridY[i]*32),sprite_xoffset,sprite_yoffset,dir,"y");
		
		if(distance = -1 or point_distance(mouse_x-x+sprite_xoffset,mouse_y-y+sprite_yoffset,px,py)<distance){
			other.matrixMouseX = gridX[i];
			other.matrixMouseY = gridY[i];
			distance =  point_distance(mouse_x-x+sprite_xoffset,mouse_y-y+sprite_yoffset,px,py);
		}
	}
	
	other.gridPositionX = x-sprite_xoffset+rotate_around_point(16+(other.matrixMouseX*32),16+(other.matrixMouseY*32),sprite_xoffset,sprite_yoffset,dir,"x");
	other.gridPositionY = y-sprite_yoffset+rotate_around_point(16+(other.matrixMouseX*32),16+(other.matrixMouseY*32),sprite_xoffset,sprite_yoffset,dir,"y");
}











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
	for(var i = -1; i<other.width+1; i++){
		for(var j = -1; j<other.height+1; j++){

			var px = rotate_around_point(16+(i*32),16+(j*32),sprite_xoffset,sprite_yoffset,dir,"x");
			var py = rotate_around_point(16+(i*32),16+(j*32),sprite_xoffset,sprite_yoffset,dir,"y");
		
			if(distance = -1 or point_distance(mouse_x-x+sprite_xoffset,mouse_y-y+sprite_yoffset,px,py)<distance){
				other.matrixMouseX = i;
				other.matrixMouseY = j;
				distance =  point_distance(mouse_x-x+sprite_xoffset,mouse_y-y+sprite_yoffset,px,py);
			}
			
			
		}
	}
	
	if(distance>point_distance(0,0,16,16)){
		other.matrixMouseX = -2;
		other.matrixMouseY = -2;
	
	}
	
	other.gridPositionX = x-sprite_xoffset+rotate_around_point(16+(other.matrixMouseX*32),16+(other.matrixMouseY*32),sprite_xoffset,sprite_yoffset,dir,"x");
	other.gridPositionY = y-sprite_yoffset+rotate_around_point(16+(other.matrixMouseX*32),16+(other.matrixMouseY*32),sprite_xoffset,sprite_yoffset,dir,"y");
}

//layer selection

for(var i = 0; i <layerAmount; i++){
	
	layerButtonHover[i] = point_in_rectangle(gui_mouse_get_x(),gui_mouse_get_y(),draw_bar_point_x(layerBarX,layerBarY,layerBarAngle,i,layerAmount)-28,draw_bar_point_y(layerBarX,layerBarY,layerBarAngle,i,layerAmount)-28,draw_bar_point_x(layerBarX,layerBarY,layerBarAngle,i,layerAmount)+28,draw_bar_point_y(layerBarX,layerBarY,layerBarAngle,i,layerAmount)+28)
	
	if((layerButtonHover[i] and mouse_check_button_pressed(mb_left)) or keyboard_check_pressed(ord(layerButtonHotkey[i]))){
		layerSelected = i;

	}

}


//
if(matrixMouseX!=-2 and matrixMouseY!=-2){
	
	
}













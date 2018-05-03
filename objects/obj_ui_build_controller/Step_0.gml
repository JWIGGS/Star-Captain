/// @description 

if(!active){
	exit;	
}


obj_ui_inventory_controller.active = keyboard_check(vk_space);

if(keyboard_check_released(vk_space)){
	//auto switch layer
	event_user(2);	
}


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
	else if(inventoryMouseItem!=""){
		other.gridMouseX = x-sprite_xoffset+rotate_around_point((16*map_data(global.itemData,itemDataWidth,inventoryMouseItem)*(1-((other.rotationSelected mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,inventoryMouseItem)*(((other.rotationSelected mod 180)/90)))+(other.matrixMouseX*32),(16*map_data(global.itemData,itemDataHeight,inventoryMouseItem)*(1-((other.rotationSelected mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,inventoryMouseItem)*(((other.rotationSelected mod 180)/90)))+(other.matrixMouseY*32),sprite_xoffset,sprite_yoffset,dir,"x");
		other.gridMouseY = y-sprite_yoffset+rotate_around_point((16*map_data(global.itemData,itemDataWidth,inventoryMouseItem)*(1-((other.rotationSelected mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,inventoryMouseItem)*(((other.rotationSelected mod 180)/90)))+(other.matrixMouseX*32),(16*map_data(global.itemData,itemDataHeight,inventoryMouseItem)*(1-((other.rotationSelected mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,inventoryMouseItem)*(((other.rotationSelected mod 180)/90)))+(other.matrixMouseY*32),sprite_xoffset,sprite_yoffset,dir,"y");
	}
			

}

//layer selection

for(var i = 0; i <layerAmount; i++){
	
	layerButtonHover[i] = point_in_rectangle(gui_mouse_get_x(),gui_mouse_get_y(),draw_bar_point_x(layerBarX,layerBarY,layerBarAngle,i,layerAmount)-28,draw_bar_point_y(layerBarX,layerBarY,layerBarAngle,i,layerAmount)-28,draw_bar_point_x(layerBarX,layerBarY,layerBarAngle,i,layerAmount)+28,draw_bar_point_y(layerBarX,layerBarY,layerBarAngle,i,layerAmount)+28)
	
	if((layerButtonHover[i] and mouse_check_button_pressed(mb_left)) or keyboard_check_pressed(ord(layerButtonHotkey[i]))){
		layerSelected = i;

	}

}





//place and delete blocks
if(matrixMouseX!=-2 and matrixMouseY!=-2){
	
	
	//delete blocks
	if(mouse_check_button(mb_right)){
		for(var i = 0; i<length; i++){

			if(gridX[i] = matrixMouseX and gridY[i] = matrixMouseY){
				
				length--;
				
				for(var j = i; j<length; j++){
					gridX[j] = gridX[j+1];
					gridY[j] = gridY[j+1];
					hullMap[j] = hullMap[j+1]
					materialMap[j] = materialMap[j+1];
					rotationMap[j] = rotationMap[j+1];
					flipMap[j] = flipMap[j+1];
					componentMap[j] = componentMap[j+1];
					keymapA[j] = keymapA[j+1];
					keymapB[j] = keymapB[j+1];
					keymapType[j] = keymapType[j+1];
					
				}
				
				gridX[j] = 0;
				gridY[j] = 0;
				hullMap[j] = "";
				materialMap[j] = "";
				rotationMap[j] = 0;
				flipMap[j] = 1;
				componentMap[j] = "";
				keymapA[j] = "";
				keymapB[j] ="";
				keymapType[j] = "or";
				
				break;

			}
		}
	}
	
	
	placeable = true;
	
	//check for placement
	if(global.player.inventoryMouseItem!=""){
		switch(map_data(global.itemData,itemDataRole,global.player.inventoryMouseItem)){
			case "material":
				
				for(var i = 0; i<length; i++){
					if(gridX[i] = matrixMouseX and gridY[i] = matrixMouseY){
						if(hullMap[i]!="" or componentMap[i]!=""){
							placeable = false;
							break;
						}
					}
				}
				
				
				break;
				
			case "module":
			
				for(var i = 0; i<length; i++){
					if(gridX[i] = matrixMouseX and gridY[i] = matrixMouseY){
						if(hullMap[i]!="full" or componentMap[i]!=""){
							placeable = false;
							break;
						}
					}
				}
			
				break;
				
			case "attachment":
				placeable= false;
				break;
		}
		
	}
	
	
	
	
	
}


//keyboard hotkeys
if(keyboard_check_pressed(ord("R"))){
	rotationSelected = wrap(rotationSelected+90,0,360);
	
	show_debug_message(rotationSelected);
}

if(keyboard_check_pressed(ord("F"))){
	flipSelected *= -1;
}














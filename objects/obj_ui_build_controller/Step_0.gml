/// @description 



if(!active){
	exit;	
}


obj_ui_inventory_controller.active = keyboard_check(vk_space);

with(par_popup){
	if(active){
		exit;	
	}
}


//matrix mouse position
matrixMouseX = ((mouse_x - global.player.x + global.player.sprite_xoffset - spaceshipOffsetX) div 32) + boolean_return(mouse_x - global.player.x + global.player.sprite_xoffset- spaceshipOffsetX<0,-1,0)
matrixMouseY = ((mouse_y - global.player.y + global.player.sprite_yoffset - spaceshipOffsetY) div 32) + boolean_return(mouse_y - global.player.y + global.player.sprite_yoffset- spaceshipOffsetY<0,-1,0)


//layer selection
for(var i = 0; i <layerAmount; i++){
	
	layerButtonHover[i] = point_in_rectangle(gui_mouse_get_x(),gui_mouse_get_y(),draw_bar_point_x(layerBarX,layerBarY,layerBarAngle,i,layerAmount)-28,draw_bar_point_y(layerBarX,layerBarY,layerBarAngle,i,layerAmount)-28,draw_bar_point_x(layerBarX,layerBarY,layerBarAngle,i,layerAmount)+28,draw_bar_point_y(layerBarX,layerBarY,layerBarAngle,i,layerAmount)+28)
	
	if((layerButtonHover[i] and mouse_check_button_pressed(mb_left)) or keyboard_check_pressed(ord(layerButtonHotkey[i]))){
		layerSelected = i;
	}
	
}

switch(layerSelected){
	
	//editing
	case 0:	

		//editing - adding blocks
		if(global.player.inventoryMouseItem!=""){

			switch(map_data(global.itemData,itemDataRole,global.player.inventoryMouseItem)){
				
				//hull
				case "material":
					
					for(var i = 0; i<hullAmount; i++){
						hullButtonHover[i] = point_in_rectangle(gui_mouse_get_x(),gui_mouse_get_y(),draw_bar_point_x(hullBarX,hullBarY,hullBarAngle,i,hullAmount)-28,draw_bar_point_y(hullBarX,hullBarY,hullBarAngle,i,hullAmount)-28,draw_bar_point_x(hullBarX,hullBarY,hullBarAngle,i,hullAmount)+28,draw_bar_point_y(hullBarX,hullBarY,hullBarAngle,i,hullAmount)+28);
	
						if((hullButtonHover[i] and mouse_check_button_pressed(mb_left)) or keyboard_check_pressed(ord(hullButtonHotkey[i]))){
							hullSelected = i;
							rotationSelected = 0;
							flipSelected = 1;
				
						}
					}
					
					placeable = true;
			
					for(var i =0; i<length; i++){
						if(gridX[i] = matrixMouseX and gridY[i] = matrixMouseY){
							if(hullMap[i]!="" or componentMap[i]!=""){
								placeable = false;	
							}
						}
				
					}
					
					
					if(mouse_check_button(mb_left) and placeable){


						gridX[length] = matrixMouseX;
						gridY[length] = matrixMouseY;
						gridRefX[length] = matrixMouseX;
						gridRefY[length] = matrixMouseY;
						hullMap[length] = global.hull[hullSelected];
						materialMap[length] = global.player.inventoryMouseItem;
						rotationMap[length] = rotationSelected;
						flipMap[length] = flipSelected;
						componentMap[length] = "";
						keymapA[length] = "";
						keymapB[length] ="";
						keymapType[length] = "or";
					
						length ++;
					
					
						//expand width and height
						if(matrixMouseX<0){
							for(var i = 0; i<length; i++){
								gridX[i] += abs(matrixMouseX);	
								gridRefX[i] += abs(matrixMouseX);
							}
							spaceshipOffsetX -= 32*abs(matrixMouseX);
						}
						if(matrixMouseY<0){
							for(var i = 0; i<length; i++){
								gridY[i] += abs(matrixMouseY);
								gridRefY[i] += abs(matrixMouseY);	
							}
							spaceshipOffsetY -= 32*abs(matrixMouseY);
						}
						
						event_user(1);
						

					
					}
					

					
					break;
				
				//module attachments
				case "module":
				
					placeable = matrixMouseX >=0 and matrixMouseY >=0 and indexMap[matrixMouseX,matrixMouseY]!=-1 and hullMap[indexMap[matrixMouseX,matrixMouseY]]="full" and componentMap[indexMap[matrixMouseX,matrixMouseY]]="";


					if(mouse_check_button(mb_left) and placeable){
						rotationMap[indexMap[matrixMouseX,matrixMouseY]] = rotationSelected;
						flipMap[indexMap[matrixMouseX,matrixMouseY]] = flipSelected;
						componentMap[indexMap[matrixMouseX,matrixMouseY]] = global.player.inventoryMouseItem;

					
					}
				
					break;
					
				case "attachment":
					
					placeable = true;
					
					//check to see if there is no current object there
					
					for(var i = 0; i<map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem);i++){
						for(var j= 0; j<map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem);j++){
									
							var placeX = round(matrixMouseX + rotate_around_point(i,j,0,0,rotationSelected+90,"x"));
							var placeY = round(matrixMouseY + rotate_around_point(i,j,0,0,rotationSelected+90,"y"));
							
							if(placeX>=0 and placeY>=0){
								var index = indexMap[placeX,placeY];
								
								if(index!=-1){
									if(componentMap[index] != "" or hullMap[index] != "" ){
										placeable = false;
										console_log(componentMap[index])
										break;
									}
								}
							}
									
						}
					}
					
					if(mouse_check_button(mb_left) and placeable) {

						var placeXMin = spaceshipMaxSize;
						var placeYMin = spaceshipMaxSize;
							
						for(var i = 0; i<map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem);i++){
							for(var j= 0; j<map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem);j++){
									
								var placeX = round(matrixMouseX + rotate_around_point(i,j,0,0,rotationSelected+90,"x"));
								var placeY = round(matrixMouseY + rotate_around_point(i,j,0,0,rotationSelected+90,"y"));
									
								placeXMin = boolean_return(placeX<placeXMin,placeX,placeXMin);
								placeYMin = boolean_return(placeY<placeYMin,placeY,placeYMin);
									
								gridX[length] = placeX;
								gridY[length] = placeY;
								gridRefX[length] = matrixMouseX;
								gridRefY[length] = matrixMouseY;
								hullMap[length] = "";
								materialMap[length] = "";
								rotationMap[length] = rotationSelected;
								flipMap[length] = flipSelected;
								componentMap[length] = boolean_return(i = 0 and j = 0,global.player.inventoryMouseItem,"_");
								keymapA[length] = "";
								keymapB[length] ="";
								keymapType[length] = "or";
					
								length ++;
									
									
	
									
									
							}
						}
							
							
							
							
					
					
						//expand width and height
						if(placeXMin<0){
							for(var i = 0; i<length; i++){
								gridX[i] += abs(placeXMin);	
								gridRefX[i] += abs(placeXMin);
							}
							spaceshipOffsetX -= 32*abs(placeXMin);
						}
						if(placeYMin<0){
							for(var i = 0; i<length; i++){
								gridY[i] += abs(placeYMin);
								gridRefY[i] += abs(placeYMin);	
							}
							spaceshipOffsetY -= 32*abs(placeYMin);
						}
						
						event_user(1);
						
						
					
					}
					
				
					break;
				
			}
		
			
		}
		
		//editing - deleting blocks
		if(mouse_check_button(mb_right)){
			
			for(var i = 0; i<length; i++){

				if(gridX[i] = matrixMouseX and gridY[i] = matrixMouseY){
					
					var deleteIndex = indexMap[gridRefX[i],gridRefY[i]];
					
					var deleteWidth = boolean_return(componentMap[deleteIndex]!="",map_data(global.itemData,itemDataWidth,componentMap[deleteIndex]),1);
					var deleteHeight = boolean_return(componentMap[deleteIndex]!="",map_data(global.itemData,itemDataHeight ,componentMap[deleteIndex]),1);

					var deleteAmount = deleteWidth*deleteHeight;

					for(var j =0; j<deleteAmount; j++){
						length--;
						for(var k = deleteIndex; k<length; k++){
							gridX[k] = gridX[k+1];
							gridY[k] = gridY[k+1];
							gridRefX[k] = gridRefX[k+1];
							gridRefY[k] = gridRefY[k+1];
							hullMap[k] = hullMap[k+1]
							materialMap[k] = materialMap[k+1];
							rotationMap[k] = rotationMap[k+1];
							flipMap[k] = flipMap[k+1];
							componentMap[k] = componentMap[k+1];
							keymapA[k] = keymapA[k+1];
							keymapB[k] = keymapB[k+1];
							keymapType[k] = keymapType[k+1];
					
						}
				
						gridX[length] = 0;
						gridY[length] = 0;
						gridRefX[length] = -1;
						gridRefY[length] = -1;
						hullMap[length] = "";
						materialMap[length] = "";
						rotationMap[length] = 0;
						flipMap[length] = 1;
						componentMap[length] = "";
						keymapA[length] = "";
						keymapB[length] ="";
						keymapType[length] = "or";
					
					}
					
					
					
					
					
					event_user(1);
					
					
				
					break;

				}
			
			
			
			}
			
			
		
		}
		
		//editing - keyboard hotkeys
		if(keyboard_check_pressed(ord("R"))){
			rotationSelected = wrap(rotationSelected+90,0,360);
		}

		if(keyboard_check_pressed(ord("F"))){
			flipSelected *= -1;
		}
		
		break;
		
	//keymap
	case 1:
	
		break;
	
	
	
}
















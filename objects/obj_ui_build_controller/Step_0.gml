/// @description 


if(!active){
	exit;	
}

obj_ui_inventory_controller.active = keyboard_check(vk_space) and layerSelected = 1;

with(par_popup){
	if(active){
		exit;	
	}
}


//matrix mouse position
matrixMouseX = ((mouse_x - global.player.x + global.player.sprite_xoffset -spaceshipSpriteOffset- spaceshipOffsetX) div 32) + boolean_return(mouse_x - global.player.x + global.player.sprite_xoffset-spaceshipSpriteOffset - spaceshipOffsetX<0,-1,0);
matrixMouseY = ((mouse_y - global.player.y + global.player.sprite_yoffset -spaceshipSpriteOffset - spaceshipOffsetY) div 32) + boolean_return(mouse_y - global.player.y + global.player.sprite_yoffset-spaceshipSpriteOffset - spaceshipOffsetY<0,-1,0);

//layer selection
for(var i = 0; i <layerAmount; i++){
	
	layerButtonHover[i] = point_in_rectangle(gui_mouse_get_x(),gui_mouse_get_y(),draw_bar_point_x(layerBarX,layerBarY,layerBarAngle,i,layerAmount)-28,draw_bar_point_y(layerBarX,layerBarY,layerBarAngle,i,layerAmount)-28,draw_bar_point_x(layerBarX,layerBarY,layerBarAngle,i,layerAmount)+28,draw_bar_point_y(layerBarX,layerBarY,layerBarAngle,i,layerAmount)+28)
	
	if((layerButtonHover[i] and mouse_check_button_pressed(mb_left)) or keyboard_check_pressed(layerButtonHotkey[i])){
		layerSelected = i;
	}
	
}



switch(layerSelected){
	
	//editing
	case 1:	
		
		if(global.player.inventoryMouseAmount<=0){
			global.player.inventoryMouseItem="";

		}
		
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
					
					if(point_in_rectangle_any(matrixMouseX,matrixMouseY,0,0,width,height)){
						placeable = indexMap[matrixMouseX,matrixMouseY]=-1;
					}

					
					if(mouse_check_button(mb_left) and placeable){


						gridX[length] = matrixMouseX;
						gridY[length] = matrixMouseY;
						hullMap[length] = global.hull[hullSelected];
						materialMap[length] = global.player.inventoryMouseItem;
						rotationMap[length] = rotationSelected;
						componentMap[length] = "";
						flipMap[length] = flipSelected;
						refMap[length] = length;
						keyMap[length] = "";
					
						length ++;
						
						global.player.inventoryMouseAmount --;

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
						
						global.player.inventoryMouseAmount --;

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
										break;
									}
								}
							}
									
						}
					}
					
					if(mouse_check_button(mb_left) and placeable) {

						var placeXMin = spaceshipMaxSize;
						var placeYMin = spaceshipMaxSize;
							
						var startLength = length;
						
						
						
						for(var i = 0; i<map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem);i++){
							for(var j= 0; j<map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem);j++){
									
								var placeX = round(matrixMouseX + rotate_around_point(i,j,0,0,rotationSelected+90,"x"));
								var placeY = round(matrixMouseY + rotate_around_point(i,j,0,0,rotationSelected+90,"y"));
									
								placeXMin = boolean_return(placeX<placeXMin,placeX,placeXMin);
								placeYMin = boolean_return(placeY<placeYMin,placeY,placeYMin);
									
								gridX[length] = placeX;
								gridY[length] = placeY;
								hullMap[length] = "";
								materialMap[length] = "";
								rotationMap[length] = rotationSelected;
								flipMap[length] = flipSelected;
								componentMap[length] = boolean_return(i = 0 and j = 0,global.player.inventoryMouseItem,"_");
								keyMap[length] = "";
								refMap[length] = startLength;
					
								length ++;
									
									
	
									
									
							}
						}
						
						global.player.inventoryMouseAmount --;
						
						
						event_user(1);

					
					}
					
				
					break;
				
			}
		
			
		}
		
		//editing - deleting blocks
		if(mouse_check_button(mb_right)){
			
			for(var i = 0; i<length; i++){

				if(gridX[i] = matrixMouseX and gridY[i] = matrixMouseY){
					
					var deleteIndex = refMap[i];
					
					inventory_add_item(materialMap[deleteIndex],1,global.player);
					inventory_add_item(componentMap[deleteIndex],1,global.player);
					
					var deleteWidth = boolean_return(componentMap[deleteIndex]!="",map_data(global.itemData,itemDataWidth,componentMap[deleteIndex]),1);
					var deleteHeight = boolean_return(componentMap[deleteIndex]!="",map_data(global.itemData,itemDataHeight ,componentMap[deleteIndex]),1);

					var deleteAmount = deleteWidth*deleteHeight;
					

					for(var j =0; j<deleteAmount; j++){
						length--;
						for(var k = deleteIndex; k<length; k++){
							gridX[k] = gridX[k+1];
							gridY[k] = gridY[k+1];
							hullMap[k] = hullMap[k+1]
							materialMap[k] = materialMap[k+1];
							rotationMap[k] = rotationMap[k+1];
							flipMap[k] = flipMap[k+1];
							componentMap[k] = componentMap[k+1];
							keyMap[k] = keyMap[k+1];
							refMap[k] = refMap[k+1]-1;
					
						}
				
						gridX[length] = 0;
						gridY[length] = 0;
						hullMap[length] = "";
						materialMap[length] = "";
						rotationMap[length] = 0;
						flipMap[length] = 1;
						componentMap[length] = "";
						keyMap[length] = "";
						refMap[length] = -1;
					
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
	case 0:
		
		placeable = !keyboard_check(vk_lshift) and matrixMouseX>=0 and matrixMouseY>=0 and indexMap[matrixMouseX,matrixMouseY]!=-1 and componentMap[indexMap[matrixMouseX,matrixMouseY]]!="";
		
		if(placeable){
			
			var index = indexMap[matrixMouseX,matrixMouseY];
			
			//capital letters
			for(var i = 65;i<91; i++){
				if(keyboard_check_pressed(i)){
					keyMap[index] = chr(i);
					
				}
			}
			//numbers
			for(var i = 48;i<58; i++){
				if(keyboard_check_pressed(i)){
					keyMap[index] = chr(i);
				}
			}
			//mouse
			if(mouse_check_button_pressed(mb_left)){
				keyMap[index] = "M1";
			}
			if(mouse_check_button_pressed(mb_right)){
				keyMap[index] = "M2";
			}
			//other keys
			if(keyboard_check_pressed(vk_up)){
				keyMap[index] = "U^";
			}
			if(keyboard_check_pressed(vk_down)){
				keyMap[index] = "D^";
			}
			if(keyboard_check_pressed(vk_left)){
				keyMap[index] = "L^";
			}
			if(keyboard_check_pressed(vk_right)){
				keyMap[index] = "R^";
			}
			if(keyboard_check_pressed(vk_space)){
				keyMap[index] = "S^";
			}
			
			if(keyboard_check(vk_backspace) or keyboard_check(vk_delete)){
				keyMap[index] = "";
			}
			
		}

	
		break;
	
	
	
}
















/// @description inventory movement

//inventory interaction
var isHover = false;
for(var i = 0; i<inventoryGridWidth; i++){
	for(var j = 0; j<inventoryGridHeight;j++){
		
		inventoryGridHover[i,j] = point_in_rectangle(gui_mouse_get_x(),gui_mouse_get_y(),xPos+inventoryGridX+(i*inventoryGridSpacing)-24,yPos+inventoryGridY+(j*inventoryGridSpacing)-24,xPos+inventoryGridX+(i*inventoryGridSpacing)+23,yPos+inventoryGridY+(j*inventoryGridSpacing)+23);
		
		if(inventoryGridHover[i,j]){
			
			inventoryGridMouseHoverX = i;
			inventoryGridMouseHoverY = j;
			isHover = true;

				
			if(global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!=-1 and global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!=-1){
				i = global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(inventoryGridMouseHoverX,inventoryGridMouseHoverY,inventoryGridWidth)];
				j = global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(inventoryGridMouseHoverX,inventoryGridMouseHoverY,inventoryGridWidth)];
			}
			

			
			if(mouse_check_button_pressed(mb_left)){

				//drop mouse items into inventory if same
				if(global.player.inventoryMouseItem = global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]){
					global.player.inventoryAmount[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] += global.player.inventoryMouseAmount;
					
					if(global.player.inventoryAmount[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]>inventoryStack){
						global.player.inventoryMouseAmount = global.player.inventoryAmount[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]-inventoryStack;
						global.player.inventoryAmount[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = inventoryStack;
					}
					else{
						global.player.inventoryMouseItem ="";
						global.player.inventoryMouseAmount = 0;
					}
				}

				
				

				//swap items if different
				else{

					var hasRoom = true;
					
					if(global.player.inventoryMouseItem!=""){
						if(i+map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)<=inventoryGridWidth and j+map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)<=inventoryGridHeight){
							for(var m = 0; m<map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem);m++){
								for(var n = 0; n<map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem);n++){
							
									if((global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != i and global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != -1) or ((global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != j and global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != -1))){
										hasRoom = false;
									}
							
								}
							}
						}
						else{
							hasRoom = false;	
						}
					}
		
					
					if(hasRoom){
						
						for(var m = 0; m<map_data(global.itemData,itemDataWidth, global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]);m++){
							for(var n = 0; n<map_data(global.itemData,itemDataHeight, global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]);n++){
							
								global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] = -1;
								global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] = -1;
							
							}
						}
						
						for(var m = 0; m<map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem);m++){
							for(var n = 0; n<map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem);n++){
							
								global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] = i;
								global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] = j;
							
							}
						}
						
						
						var mouseItem = global.player.inventoryMouseItem;
						var mouseAmount = global.player.inventoryMouseAmount;
			
						global.player.inventoryMouseItem = global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)];
						global.player.inventoryMouseAmount = global.player.inventoryAmount[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)];
			
						global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = mouseItem;
						global.player.inventoryAmount[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = mouseAmount;
						
						
				
					}
					
				}
				
				
				
				
				
				
			}
			
			if(mouse_check_button_pressed(mb_right)){
				//pick up half of a stack
				if(global.player.inventoryMouseItem = "" and global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] != "" and global.player.inventoryAmount[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]>0){
					global.player.inventoryMouseItem = global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)];
					global.player.inventoryMouseAmount += global.player.inventoryAmount[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] div 2;
					global.player.inventoryAmount[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] -= global.player.inventoryAmount[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] div 2;
				}
				
				else if((global.player.inventoryMouseItem  = global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] or global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = "") and global.player.inventoryMouseAmount>0){				
					
					
					var hasRoom = true;
					
					if(global.player.inventoryMouseItem!=""){
						for(var m = 0; m<map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem);m++){
							for(var n = 0; n<map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem);n++){
							
								if((global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != i and global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != -1) or ((global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != j and global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != -1))){
									hasRoom = false;
								}
							
							}
						}
					}
		
					
					if(hasRoom){

						
						for(var m = 0; m<map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem);m++){
							for(var n = 0; n<map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem);n++){
							
								global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] = i;
								global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] = j;
							
							}
						}
						
						//put down one item at a time
						global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = global.player.inventoryMouseItem;
						global.player.inventoryMouseAmount--;
						global.player.inventoryAmount[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] ++;	
					
					}
					
					
					
				}
				
			}
			
			i = inventoryGridMouseHoverX;
			j = inventoryGridMouseHoverY;

			
		}
		
		
	}
}

if(!isHover){
	inventoryGridMouseHoverX = -1;
	inventoryGridMouseHoverY = -1;
}


/// @description inventory control


//inventory interaction
var isHover = false;
for(var i = 0; i<inventoryGridWidth; i++){
	for(var j = 0; j<inventoryGridHeight;j++){
		
		
		
		inventoryGridHover[i,j] = point_in_rectangle(gui_mouse_get_x(),gui_mouse_get_y(),inventoryXPos+inventoryGridX+(i*inventoryGridSpacing)-24,inventoryYPos+inventoryGridY+(j*inventoryGridSpacing)-24,inventoryXPos+inventoryGridX+(i*inventoryGridSpacing)+23,inventoryYPos+inventoryGridY+(j*inventoryGridSpacing)+23);
		
		if(inventoryGridHover[i,j]){
			
			inventoryGridMouseHoverX = i;
			inventoryGridMouseHoverY = j;
			isHover = true;
			
			
			if(inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!=-1 and inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!=-1){
				i = inventoryReferenceX[inventoryPageSelected,value_to_1d(inventoryGridMouseHoverX,inventoryGridMouseHoverY,inventoryGridWidth)];
				j = inventoryReferenceY[inventoryPageSelected,value_to_1d(inventoryGridMouseHoverX,inventoryGridMouseHoverY,inventoryGridWidth)];
			}
			
			
			if(mouse_check_button_pressed(mb_left)){

				//drop mouse items into inventory if same
				if(inventoryMouseItem = inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]){
					inventoryAmount[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] += inventoryMouseAmount;
					
					var stack = map_data(global.itemData,itemDataStack,inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]);
					
					if(inventoryAmount[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]>stack){
						inventoryMouseAmount = inventoryAmount[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]-stack;
						inventoryAmount[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = stack;
					}
					else{
						inventoryMouseItem ="";
						inventoryMouseAmount = 0;
					}
				}

				
				

				//swap items if different
				else{

					var hasRoom = true;
					
					if(inventoryMouseItem!=""){
						if(i+map_data(global.itemData,itemDataWidth,inventoryMouseItem)<=inventoryGridWidth and j+map_data(global.itemData,itemDataHeight,inventoryMouseItem)<=inventoryGridHeight){
							for(var m = 0; m<map_data(global.itemData,itemDataWidth,inventoryMouseItem);m++){
								for(var n = 0; n<map_data(global.itemData,itemDataHeight,inventoryMouseItem);n++){
							
									if((inventoryReferenceX[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != i and inventoryReferenceX[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != -1) or ((inventoryReferenceY[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != j and inventoryReferenceY[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != -1))){
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
						
						for(var m = 0; m<map_data(global.itemData,itemDataWidth, inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]);m++){
							for(var n = 0; n<map_data(global.itemData,itemDataHeight, inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]);n++){
							
								inventoryReferenceX[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] = -1;
								inventoryReferenceY[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] = -1;
							
							}
						}
						
						for(var m = 0; m<map_data(global.itemData,itemDataWidth,inventoryMouseItem);m++){
							for(var n = 0; n<map_data(global.itemData,itemDataHeight,inventoryMouseItem);n++){
							
								inventoryReferenceX[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] = i;
								inventoryReferenceY[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] = j;
							
							}
						}
						
						
						var mouseItem = inventoryMouseItem;
						var mouseAmount = inventoryMouseAmount;
			
						inventoryMouseItem = inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)];
						inventoryMouseAmount = inventoryAmount[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)];
			
						inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = mouseItem;
						inventoryAmount[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = mouseAmount;
						
						
				
					}
					
				}
				
				
				
				
				
				
			}
			
			if(mouse_check_button_pressed(mb_right)){
				//pick up half of a stack
				if(inventoryMouseItem = "" and inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] != "" and inventoryAmount[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]>0){
					inventoryMouseItem = inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)];
					inventoryMouseAmount += inventoryAmount[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] div 2;
					inventoryAmount[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] -= inventoryAmount[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] div 2;
				}
				
				else if((inventoryMouseItem  = inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] or inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = "") and inventoryMouseAmount>0){				
					
					
					var hasRoom = true;
					
					if(inventoryMouseItem!=""){
						for(var m = 0; m<map_data(global.itemData,itemDataWidth,inventoryMouseItem);m++){
							for(var n = 0; n<map_data(global.itemData,itemDataHeight,inventoryMouseItem);n++){
							
								if((inventoryReferenceX[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != i and inventoryReferenceX[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != -1) or ((inventoryReferenceY[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != j and inventoryReferenceY[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] != -1))){
									hasRoom = false;
								}
							
							}
						}
					}
		
					
					if(hasRoom){

						
						for(var m = 0; m<map_data(global.itemData,itemDataWidth,inventoryMouseItem);m++){
							for(var n = 0; n<map_data(global.itemData,itemDataHeight,inventoryMouseItem);n++){
							
								inventoryReferenceX[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] = i;
								inventoryReferenceY[inventoryPageSelected,value_to_1d(i+m,j+n,inventoryGridWidth)] = j;
							
							}
						}
						
						//put down one item at a time
						inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = inventoryMouseItem;
						inventoryMouseAmount--;
						inventoryAmount[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] ++;	
					
					}
					
					
					
				}
				
			}
			
			for(var n = 0; n<10; n++){
				if(keyboard_check_pressed(ord(string(n)))){
					
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


//mouse hover
array_fill_2d(inventoryGridMouseHover,inventoryGridWidth,inventoryGridHeight,false);

//inventory mouse superficial hoveer
if(inventoryGridMouseHoverX!=-1 and inventoryGridMouseHoverX!=-1){
	for(var m = 0; m<map_data(global.itemData,itemDataWidth,inventoryMouseItem); m++){
		for(var n = 0; n<map_data(global.itemData,itemDataHeight,inventoryMouseItem); n++){
			inventoryGridMouseHover[inventoryGridMouseHoverX+m,inventoryGridMouseHoverY+n] = true;
		}
	}
}


//inventory superficial hover
for(var i = 0; i<inventoryGridWidth; i++){
	for(var j = 0; j<inventoryGridHeight;j++){
		if(inventoryGridHover[i,j] and inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] != "" and inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] != -1 and inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] != -1){
			
			
			for(var m = 0; m<map_data(global.itemData,itemDataWidth,inventoryItem[inventoryPageSelected,value_to_1d(inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)],inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)],inventoryGridWidth)]); m++){
				for(var n = 0; n<map_data(global.itemData,itemDataHeight,inventoryItem[inventoryPageSelected,value_to_1d(inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)],inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)],inventoryGridWidth)]); n++){
					inventoryGridHover[inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]+m,inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]+n] = true;
				}
			}
			
			
		}
	}
	
}

//pages interaction
for(var i = 0; i<inventoryPages; i++){
	inventoryPageHover[i] = point_in_rectangle(gui_mouse_get_x(),gui_mouse_get_y(),inventoryXPos-(inventoryPages*16)+(i*32)+16-12,inventoryYPos+556-12,inventoryXPos-(inventoryPages*16)+(i*32)+16+12,inventoryYPos+556+12);
	
	
	if(inventoryPageHover[i] and mouse_check_button_pressed(mb_left)){
		inventoryPageSelected = i;	
	}
}


//wheel shortcut
if(mouse_wheel_down()){
	inventoryPageSelected = clamp(inventoryPageSelected+1,0,8);
}
if(mouse_wheel_up()){
	inventoryPageSelected = clamp(inventoryPageSelected-1,0,8);
}


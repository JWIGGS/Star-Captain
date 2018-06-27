/// @description 

if(inventoryActive){

	draw_sprite(spr_gui_inventory,0,inventoryXPos,inventoryYPos);

	//draw pages
	for(var i = 0; i<inventoryPages; i++){
		draw_sprite(spr_gui_dot,inventoryPageHover[i]+(2*(inventoryPageSelected = i)),inventoryXPos-(inventoryPages*16)+(i*32)+16,inventoryYPos+556);
	}



	//draw inventory

	for(var i = 0; i<inventoryGridWidth; i++){
		for(var j = 0; j<inventoryGridHeight;j++){
			var color = c_white;
		
		
			//normal grid

			draw_sprite_ext(spr_gui_grid,inventoryGridHover[i,j],inventoryXPos+inventoryGridX+(i*inventoryGridSpacing),inventoryYPos+inventoryGridY+(j*inventoryGridSpacing),1,1,0,color,1);

			//right connection
			if(i<inventoryGridWidth-1 and inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!= -1 and inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!=-1){
				if(inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = inventoryReferenceX[inventoryPageSelected,value_to_1d(i+1,j,inventoryGridWidth)] and inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = inventoryReferenceY[inventoryPageSelected,value_to_1d(i+1,j,inventoryGridWidth)]){
					draw_sprite_ext(spr_gui_grid_overlay,inventoryGridHover[i,j],inventoryXPos+inventoryGridX+(i*inventoryGridSpacing),inventoryYPos+inventoryGridY+(j*inventoryGridSpacing),1,1,0,color,1);
		
				}
			}
		
		
			//up connection
			if(j>0 and inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!= -1 and inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!=-1){
				if(inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j-1,inventoryGridWidth)] and inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j-1,inventoryGridWidth)]){
					draw_sprite_ext(spr_gui_grid_overlay,inventoryGridHover[i,j],inventoryXPos+inventoryGridX+(i*inventoryGridSpacing),inventoryYPos+inventoryGridY+(j*inventoryGridSpacing),1,1,90,color,1);
		
				}
			}
		
			//left connection
			if(i>0 and inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!= -1 and inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!=-1){
				if(inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = inventoryReferenceX[inventoryPageSelected,value_to_1d(i-1,j,inventoryGridWidth)] and inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = inventoryReferenceY[inventoryPageSelected,value_to_1d(i-1,j,inventoryGridWidth)]){
					draw_sprite_ext(spr_gui_grid_overlay,inventoryGridHover[i,j],inventoryXPos+inventoryGridX+(i*inventoryGridSpacing),inventoryYPos+inventoryGridY+(j*inventoryGridSpacing),1,1,180,color,1);
		
				}
			}
		
			//down connection
			if(j<inventoryGridHeight-1 and inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!= -1 and inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!=-1){
				if(inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = inventoryReferenceX[inventoryPageSelected,value_to_1d(i,j+1,inventoryGridWidth)] and inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = inventoryReferenceY[inventoryPageSelected,value_to_1d(i,j+1,inventoryGridWidth)]){
					draw_sprite_ext(spr_gui_grid_overlay,inventoryGridHover[i,j],inventoryXPos+inventoryGridX+(i*inventoryGridSpacing),inventoryYPos+inventoryGridY+(j*inventoryGridSpacing),1,1,270,color,1);
		
				}
			}
		
		
			//mouse grid
			if(inventoryGridMouseHover[i,j]){
			
				if(!inventoryGridHover[i,j]){
					draw_sprite_ext(spr_gui_grid,inventoryGridMouseHover[i,j],inventoryXPos+inventoryGridX+(i*inventoryGridSpacing),inventoryYPos+inventoryGridY+(j*inventoryGridSpacing),1,1,0,color,1);
				}
			
				//right connection
				if(i<inventoryGridWidth-1){
					if(inventoryGridMouseHover[i+1,j]){
						draw_sprite_ext(spr_gui_grid_overlay,inventoryGridMouseHover[i,j],inventoryXPos+inventoryGridX+(i*inventoryGridSpacing),inventoryYPos+inventoryGridY+(j*inventoryGridSpacing),1,1,0,color,1);
					}
				}
		
				//up connection
				if(j>0){
					if(inventoryGridMouseHover[i,j-1]){
						draw_sprite_ext(spr_gui_grid_overlay,inventoryGridMouseHover[i,j],inventoryXPos+inventoryGridX+(i*inventoryGridSpacing),inventoryYPos+inventoryGridY+(j*inventoryGridSpacing),1,1,90,color,1);
					}
				}
		
				//left connection
				if(i>0){
					if(inventoryGridMouseHover[i-1,j]){
						draw_sprite_ext(spr_gui_grid_overlay,inventoryGridMouseHover[i,j],inventoryXPos+inventoryGridX+(i*inventoryGridSpacing),inventoryYPos+inventoryGridY+(j*inventoryGridSpacing),1,1,180,color,1);
					}
				}
		
				//down connection
				if(j<inventoryGridHeight-1){
					if(inventoryGridMouseHover[i,j+1]){
						draw_sprite_ext(spr_gui_grid_overlay,inventoryGridMouseHover[i,j],inventoryXPos+inventoryGridX+(i*inventoryGridSpacing),inventoryYPos+inventoryGridY+(j*inventoryGridSpacing),1,1,270,color,1);
					}
				}
			}
		

		
		}
	
	}
	for(var i = 0; i<inventoryGridWidth; i++){
		for(var j = 0; j<inventoryGridHeight;j++){

			if(inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] != "" and inventoryAmount[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]>0){
				
				draw_sprite_ext(asset_get_index("spr_item_"+inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]),0,inventoryXPos+inventoryGridX+(i*inventoryGridSpacing)-(24*(1-(map_data(global.itemData,itemDataWidth,inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)])))),inventoryYPos+inventoryGridY+(j*inventoryGridSpacing)-(24*(1-(map_data(global.itemData,itemDataHeight,inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)])))),1,1,0,c_white,1);
			
				//amount
				if(map_data(global.itemData,itemDataStack,inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)])>1){
					draw_text_formatting(c_white,fa_right,fa_middle,font_item_amount);
					draw_text(inventoryXPos+inventoryGridX+(i*inventoryGridSpacing)+20+(48*(map_data(global.itemData,itemDataWidth,inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)])-1)),inventoryYPos+inventoryGridY+(j*inventoryGridSpacing)+16+(48*(map_data(global.itemData,itemDataHeight,inventoryItem[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)])-1)),string(inventoryAmount[inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]));
				}
			}
		
		
		}
	}

	//draw player item and amount
	if(inventoryMouseItem != "" and inventoryMouseAmount>0 and inventoryGridMouseHoverX!=-1 and inventoryGridMouseHoverY!=-1){
	
		for(var i = 0; i<map_data(global.itemData,itemDataWidth,inventoryMouseItem); i++){
			for(var j = 0; j<map_data(global.itemData,itemDataHeight,inventoryMouseItem); j++){
				draw_sprite_ext(spr_gui_grid_mouse,0,gui_mouse_get_x()+(i*inventoryGridSpacing),gui_mouse_get_y()+(j*inventoryGridSpacing),1,1,0,color,.5);

			}	
		}
	
		draw_sprite_ext(asset_get_index("spr_item_"+inventoryMouseItem),0,gui_mouse_get_x()-(24*(1-(map_data(global.itemData,itemDataWidth,inventoryMouseItem)))),gui_mouse_get_y()-(24*(1-(map_data(global.itemData,itemDataHeight,inventoryMouseItem)))),1,1,0,c_white,1);
		
		if(map_data(global.itemData,itemDataStack,inventoryMouseItem)>1){
			draw_text_formatting(c_white,fa_right,fa_middle,font_item_amount);
			draw_text(gui_mouse_get_x()+20+(48*(map_data(global.itemData,itemDataWidth,inventoryMouseItem)-1)),gui_mouse_get_y()+16+(48*(map_data(global.itemData,itemDataHeight,inventoryMouseItem)-1)),string(inventoryMouseAmount));
		}
	
	}

}

/// @description draw inventory
if(!active){
	exit;	
}

draw_sprite(spr_gui_inventory,0,xPos,yPos);

//draw pages
for(var i = 0; i<global.player.inventoryPages; i++){
	draw_sprite(spr_gui_dot,pageHover[i]+(2*(global.player.inventoryPageSelected = i)),xPos-(global.player.inventoryPages*16)+(i*32)+16,yPos+556);
}



//draw inventory

for(var i = 0; i<inventoryGridWidth; i++){
	for(var j = 0; j<inventoryGridHeight;j++){
		var color = c_white;
		
		
		//normal grid

		draw_sprite_ext(spr_gui_grid,inventoryGridHover[i,j],xPos+inventoryGridX+(i*inventoryGridSpacing),yPos+inventoryGridY+(j*inventoryGridSpacing),1,1,0,color,1);

		//right connection
		if(i<inventoryGridWidth-1 and global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!= -1 and global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!=-1){
			if(global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i+1,j,inventoryGridWidth)] and global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i+1,j,inventoryGridWidth)]){
				draw_sprite_ext(spr_gui_grid_overlay,inventoryGridHover[i,j],xPos+inventoryGridX+(i*inventoryGridSpacing),yPos+inventoryGridY+(j*inventoryGridSpacing),1,1,0,color,1);
		
			}
		}
		
		
		//up connection
		if(j>0 and global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!= -1 and global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!=-1){
			if(global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j-1,inventoryGridWidth)] and global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j-1,inventoryGridWidth)]){
				draw_sprite_ext(spr_gui_grid_overlay,inventoryGridHover[i,j],xPos+inventoryGridX+(i*inventoryGridSpacing),yPos+inventoryGridY+(j*inventoryGridSpacing),1,1,90,color,1);
		
			}
		}
		
		//left connection
		if(i>0 and global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!= -1 and global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!=-1){
			if(global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i-1,j,inventoryGridWidth)] and global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i-1,j,inventoryGridWidth)]){
				draw_sprite_ext(spr_gui_grid_overlay,inventoryGridHover[i,j],xPos+inventoryGridX+(i*inventoryGridSpacing),yPos+inventoryGridY+(j*inventoryGridSpacing),1,1,180,color,1);
		
			}
		}
		
		//down connection
		if(j<inventoryGridHeight-1 and global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!= -1 and global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]!=-1){
			if(global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j+1,inventoryGridWidth)] and global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] = global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j+1,inventoryGridWidth)]){
				draw_sprite_ext(spr_gui_grid_overlay,inventoryGridHover[i,j],xPos+inventoryGridX+(i*inventoryGridSpacing),yPos+inventoryGridY+(j*inventoryGridSpacing),1,1,270,color,1);
		
			}
		}
		
		
		//mouse grid
		if(inventoryGridMouseHover[i,j]){
			
			if(!inventoryGridHover[i,j]){
				draw_sprite_ext(spr_gui_grid,inventoryGridMouseHover[i,j],xPos+inventoryGridX+(i*inventoryGridSpacing),yPos+inventoryGridY+(j*inventoryGridSpacing),1,1,0,color,1);
			}
			
			//right connection
			if(i<inventoryGridWidth-1){
				if(inventoryGridMouseHover[i+1,j]){
					draw_sprite_ext(spr_gui_grid_overlay,inventoryGridMouseHover[i,j],xPos+inventoryGridX+(i*inventoryGridSpacing),yPos+inventoryGridY+(j*inventoryGridSpacing),1,1,0,color,1);
				}
			}
		
			//up connection
			if(j>0){
				if(inventoryGridMouseHover[i,j-1]){
					draw_sprite_ext(spr_gui_grid_overlay,inventoryGridMouseHover[i,j],xPos+inventoryGridX+(i*inventoryGridSpacing),yPos+inventoryGridY+(j*inventoryGridSpacing),1,1,90,color,1);
				}
			}
		
			//left connection
			if(i>0){
				if(inventoryGridMouseHover[i-1,j]){
					draw_sprite_ext(spr_gui_grid_overlay,inventoryGridMouseHover[i,j],xPos+inventoryGridX+(i*inventoryGridSpacing),yPos+inventoryGridY+(j*inventoryGridSpacing),1,1,180,color,1);
				}
			}
		
			//down connection
			if(j<inventoryGridHeight-1){
				if(inventoryGridMouseHover[i,j+1]){
					draw_sprite_ext(spr_gui_grid_overlay,inventoryGridMouseHover[i,j],xPos+inventoryGridX+(i*inventoryGridSpacing),yPos+inventoryGridY+(j*inventoryGridSpacing),1,1,270,color,1);
				}
			}
		}
		

		
	}
	
}
for(var i = 0; i<inventoryGridWidth; i++){
	for(var j = 0; j<inventoryGridHeight;j++){

		if(global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] != "" and global.player.inventoryAmount[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]>0){
			
			draw_sprite_ext(asset_get_index("spr_item_"+global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]),0,xPos+inventoryGridX+(i*inventoryGridSpacing)-(24*(1-(map_data(global.itemData,itemDataWidth,global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)])))),yPos+inventoryGridY+(j*inventoryGridSpacing)-(24*(1-(map_data(global.itemData,itemDataHeight,global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)])))),1,1,0,c_white,1);
			
			//amount
			draw_text_formatting(c_white,fa_right,fa_middle,font_item_amount);
			draw_text(xPos+inventoryGridX+(i*inventoryGridSpacing)+20+(48*(map_data(global.itemData,itemDataWidth,global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)])-1)),yPos+inventoryGridY+(j*inventoryGridSpacing)+16+(48*(map_data(global.itemData,itemDataHeight,global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)])-1)),string(global.player.inventoryAmount[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]));
		
		}
		
		
	}
}

//draw player item and amount
if(global.player.inventoryMouseItem != "" and global.player.inventoryMouseAmount>0 and inventoryGridMouseHoverX!=-1 and inventoryGridMouseHoverY!=-1){
	
	for(var i = 0; i<map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem); i++){
		for(var j = 0; j<map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem); j++){
			draw_sprite_ext(spr_gui_grid_mouse,0,gui_mouse_get_x()+(i*inventoryGridSpacing),gui_mouse_get_y()+(j*inventoryGridSpacing),1,1,0,color,.5);

		}	
	}
	
	draw_sprite_ext(asset_get_index("spr_item_"+global.player.inventoryMouseItem),0,gui_mouse_get_x()-(24*(1-(map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)))),gui_mouse_get_y()-(24*(1-(map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)))),1,1,0,c_white,1);
	
	draw_text_formatting(c_white,fa_right,fa_middle,font_item_amount);
	draw_text(gui_mouse_get_x()+20+(48*(map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)-1)),gui_mouse_get_y()+16+(48*(map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)-1)),string(global.player.inventoryMouseAmount));
}	


	

/// @description superficial hover 

//mouse hover
array_fill_2d(inventoryGridMouseHover,inventoryGridWidth,inventoryGridHeight,false);


if(inventoryGridMouseHoverX!=-1 and inventoryGridMouseHoverX!=-1){
	for(var m = 0; m<map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem); m++){
		for(var n = 0; n<map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem); n++){
			inventoryGridMouseHover[inventoryGridMouseHoverX+m,inventoryGridMouseHoverY+n] = true;
		}
	}
}


//inventory
for(var i = 0; i<inventoryGridWidth; i++){
	for(var j = 0; j<inventoryGridHeight;j++){
		if(inventoryGridHover[i,j] and global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] != "" and global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] != -1 and global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)] != -1){
			
			
			for(var m = 0; m<map_data(global.itemData,itemDataWidth,global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)],global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)],inventoryGridWidth)]); m++){
				for(var n = 0; n<map_data(global.itemData,itemDataHeight,global.player.inventoryItem[global.player.inventoryPageSelected,value_to_1d(global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)],global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)],inventoryGridWidth)]); n++){
					inventoryGridHover[global.player.inventoryReferenceX[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]+m,global.player.inventoryReferenceY[global.player.inventoryPageSelected,value_to_1d(i,j,inventoryGridWidth)]+n] = true;
				}
			}
			
			
		}
	}
	
}





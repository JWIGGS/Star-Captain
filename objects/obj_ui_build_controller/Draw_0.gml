/// @description 

if(!active){
	exit;	
}


//draw spaceship
for(var i = 0; i<length; i++){

	if(hullMap[i] !="" or componentMap[i]!=""){
		
		if(hullMap[i] !=""){
			
			var pointX = rotate_around_point(16+global.player.x-global.player.sprite_xoffset+(gridX[i]*32),16+global.player.y-global.player.sprite_yoffset+(gridY[i]*32),global.player.x,global.player.y,global.player.dir,"x");
			var pointY = rotate_around_point(16+global.player.x-global.player.sprite_xoffset+(gridX[i]*32),16+global.player.y-global.player.sprite_yoffset+(gridY[i]*32),global.player.x,global.player.y,global.player.dir,"y");
			
			
			draw_sprite_ext(asset_get_index("spr_hull_"+hullMap[i]+"_"+materialMap[i]),0,pointX-16+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90))),pointY-16+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90))),flipMap[i],1,rotationMap[i]+global.player.dir-90,c_white,1);
		}
			
		if(componentMap[i] !=""){

			var rotX = global.player.x-global.player.sprite_xoffset+(gridX[i]*32)+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(((rotationMap[i] mod 180)/90)))+boolean_return(rotationMap[i] = 180,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=270,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0);
			var rotY = global.player.y-global.player.sprite_yoffset+(gridY[i]*32)+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(((rotationMap[i] mod 180)/90)))+boolean_return(rotationMap[i]=90,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=180,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0);

			var pointX = rotate_around_point(rotX,rotY,global.player.x,global.player.y,global.player.dir,"x");
			var pointY = rotate_around_point(rotX,rotY,global.player.x,global.player.y,global.player.dir,"y");
			
			draw_sprite_ext(asset_get_index("spr_item_"+componentMap[i]),0,pointX,pointY,flipMap[i],1,rotationMap[i]+global.player.dir-90,c_white,1);
		}

			
	}
	

}



//draw selected block
draw_set_color(c_lime);

if(matrixMouseX!=-2 and matrixMouseY!=-2 and global.player.inventoryMouseItem!="" and layerSelected!=2){
	
	
	
	if(map_data(global.itemData,itemDataRole,global.player.inventoryMouseItem)="material"){
		
		var pointX = rotate_around_point(16+global.player.x-global.player.sprite_xoffset+(matrixMouseX*32),16+global.player.y-global.player.sprite_yoffset+(matrixMouseY*32),global.player.x,global.player.y,global.player.dir,"x");
		var pointY = rotate_around_point(16+global.player.x-global.player.sprite_xoffset+(matrixMouseX*32),16+global.player.y-global.player.sprite_yoffset+(matrixMouseY*32),global.player.x,global.player.y,global.player.dir,"y");
			

		draw_sprite_ext(asset_get_index("spr_hull_"+global.hull[hullSelected]+"_"+global.player.inventoryMouseItem),0,pointX,pointY,flipSelected,1,global.player.dir+rotationSelected-90,boolean_return(placeable,c_white,color_red),.75);
	}
	else{
		
		var rotX = global.player.x-global.player.sprite_xoffset+(matrixMouseX*32)+(16*map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)*(1-((rotationSelected mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)*(((rotationSelected mod 180)/90)))+boolean_return(rotationSelected = 180,32*(1-map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)),0)+boolean_return(rotationSelected=270,32*(1-map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)),0);
		var rotY = global.player.y-global.player.sprite_yoffset+(matrixMouseY*32)+(16*map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)*(1-((rotationSelected mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)*(((rotationSelected mod 180)/90)))+boolean_return(rotationSelected=90,32*(1-map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)),0)+boolean_return(rotationSelected=180,32*(1-map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)),0);

		var pointX = rotate_around_point(rotX,rotY,global.player.x,global.player.y,global.player.dir,"x");
		var pointY = rotate_around_point(rotX,rotY,global.player.x,global.player.y,global.player.dir,"y");
		
		
		
		
		draw_sprite_ext(asset_get_index("spr_item_"+global.player.inventoryMouseItem),0,pointX,pointY,flipSelected,1,global.player.dir+rotationSelected-90,boolean_return(placeable,c_white,color_red),.75);
	}

	
	
	
	
}




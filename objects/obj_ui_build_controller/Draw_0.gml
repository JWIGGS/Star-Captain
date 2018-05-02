/// @description 

if(!active){
	exit;	
}



for(var i = 0; i<length; i++){

	if(hullMap[i] !="" or componentMap[i]!=""){
		var pointX = rotate_around_point(16+global.player.x-global.player.sprite_xoffset+(gridX[i]*32),16+global.player.y-global.player.sprite_yoffset+(gridY[i]*32),global.player.x,global.player.y,global.player.dir,"x");
		var pointY = rotate_around_point(16+global.player.x-global.player.sprite_xoffset+(gridX[i]*32),16+global.player.y-global.player.sprite_yoffset+(gridY[i]*32),global.player.x,global.player.y,global.player.dir,"y");
			
		if(hullMap[i] !=""){
			draw_sprite_ext(asset_get_index("spr_hull_"+hullMap[i]+"_"+materialMap[i]),0,pointX-16+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90))),pointY-16+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90))),flipMap[i],1,rotationMap[i]+global.player.dir-90,c_white,1);
		}
			
		if(componentMap[i] !=""){
			draw_sprite_ext(asset_get_index("spr_item_"+componentMap[i]),0,pointX-16+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90))),pointY-16+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90))),flipMap[i],1,rotationMap[i]+global.player.dir-90,c_white,1);
		}
			
			
			
			
	}
	

}



//draw selected block
draw_set_color(c_lime);

if(matrixMouseX!=-2 and matrixMouseY!=-2 and global.player.inventoryMouseItem!="" and layerSelected!=2){
	
	if(map_data(global.itemData,itemDataRole,global.player.inventoryMouseItem)="material"){
		draw_sprite(asset_get_index("spr_hull_"+global.hull[hullSelected]+"_"+global.player.inventoryMouseItem),0,gridPositionX,gridPositionY);
	}
	else{
		draw_sprite(asset_get_index("spr_item_"+global.player.inventoryMouseItem),0,gridPositionX,gridPositionY);
	}
	
	
	
	
}




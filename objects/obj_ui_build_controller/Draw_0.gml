/// @description 

if(!active){
	exit;	
}

draw_set_color(c_lime);

draw_text(gridPositionX,gridPositionY,string(matrixMouseX)+", "+string(matrixMouseY));

draw_circle(gridPositionX,gridPositionY,4,true);



for(var i = 0; i<length; i++){

	if(hullMap[i] !="" or componentMap[i]!=""){
		var pointX = rotate_around_point(global.player.x-spaceshipOffsetX+(gridX[i]*32),global.player.y-spaceshipOffsetY+(gridY[i]*32),global.player.x,global.player.y,global.player.dir,"x");
		var pointY = rotate_around_point(global.player.x-spaceshipOffsetX+(gridX[i]*32),global.player.y-spaceshipOffsetY+(gridY[i]*32),global.player.x,global.player.y,global.player.dir,"y");
			
		if(hullMap[i] !=""){
			draw_sprite_ext(asset_get_index("spr_hull_"+hullMap[i]+"_"+materialMap[i]),0,pointX-16+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90))),pointY-16+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90))),flipMap[i],1,rotationMap[i]+global.player.dir-90,c_white,1);
		}
			
		if(componentMap[i] !=""){
			draw_sprite_ext(asset_get_index("spr_item_"+componentMap[i]),0,pointX-16+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90))),pointY-16+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90))),flipMap[i],1,rotationMap[i]+global.player.dir-90,c_white,1);
		}
			
			
			
			
	}
	

}



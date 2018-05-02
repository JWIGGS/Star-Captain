/// @description 

if(!active){
	exit;	
}

draw_set_color(c_lime);

draw_text(gridPositionX,gridPositionY,string(matrixMouseX)+", "+string(matrixMouseY));

draw_circle(gridPositionX,gridPositionY,4,true);


/*
for(var i = 0; i<width; i++){
	for(var j = 0; j<height; j++){
		
		
		if(hullMap[i,j] !="" or componentMap[i,j]!=""){
			var pointX = rotate_around_point(global.player.x-spaceshipOffsetX+(i*32),global.player.y-spaceshipOffsetX+(j*32),global.player.x,global.player.y,global.player.dir,"x");
			var pointY = rotate_around_point(global.player.x-spaceshipOffsetX+(i*32),global.player.y-spaceshipOffsetX+(j*32),global.player.x,global.player.y,global.player.dir,"y");
			
			if(hullMap[i,j] !=""){
				draw_sprite_ext(asset_get_index("spr_hull_"+hullMap[i,j]+"_"+materialMap[i,j]),0,pointX-16+(16*(1-((rotationMap[i,j] mod 180)/90)))+(16*(((rotationMap[i,j] mod 180)/90))),pointY-16+(16*(1-((rotationMap[i,j] mod 180)/90)))+(16*(((rotationMap[i,j] mod 180)/90))),flipMap[i,j],1,rotationMap[i,j]+global.player.dir-90,c_white,1);
			}
			
			if(componentMap[i,j] !=""){
				draw_sprite_ext(asset_get_index("spr_item_"+componentMap[i,j]),0,pointX-16+(16*(1-((rotationMap[i,j] mod 180)/90)))+(16*(((rotationMap[i,j] mod 180)/90))),pointY-16+(16*(1-((rotationMap[i,j] mod 180)/90)))+(16*(((rotationMap[i,j] mod 180)/90))),flipMap[i,j],1,rotationMap[i,j]+global.player.dir-90,c_white,1);
			}
			
			
			
			
		}
	
	}
}
*/


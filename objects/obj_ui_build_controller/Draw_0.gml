/// @description 

if(!active){
	exit;	
}

var cameraXStart = camera_get_view_x(view_camera[0]);
var cameraYStart = camera_get_view_y(view_camera[0]);
var cameraXEnd = cameraXStart + camera_get_view_width(view_camera[0]);
var cameraYEnd = cameraYStart + camera_get_view_height(view_camera[0]);

//draw blueprint background
draw_set_color(color_dark);
draw_rectangle(cameraXStart,cameraYStart,cameraXEnd,cameraYEnd,false);

/*
//draw blueprint lines
draw_set_color(c_white);
draw_set_alpha(.1);
for(var i = (((cameraXStart-32) div 32) * 32) + ((global.player.x) mod 32) + 16+global.player.sprite_xoffset; i<((cameraXEnd+32) div 32)*32; i+=32){
	draw_line(i,cameraYStart,i,cameraYEnd);
}
for(var j = (((cameraYStart-32) div 32) * 32) + ((global.player.y) mod 32) + 16+global.player.sprite_yoffset; j<((cameraYEnd+32) div 32)*32; j+=32){
	draw_line(cameraXStart,j,cameraXEnd,j);
}

draw_set_alpha(1);
*/



//draw spaceship
draw_text_formatting(c_white,fa_center,fa_middle,font_tiny);

for(var i = 0; i<length; i++){

	if(hullMap[i] !="" or componentMap[i]!=""){
		
		if(hullMap[i] !=""){
			
			var pointX = spaceshipOffsetX+global.player.x-global.player.sprite_xoffset+(gridX[i]*32)+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90)));
			var pointY = spaceshipOffsetY+global.player.y-global.player.sprite_yoffset+(gridY[i]*32)+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90)));
			
			draw_sprite_ext(asset_get_index("spr_hull_"+materialMap[i]+"_"+hullMap[i]),0,pointX,pointY,flipMap[i],1,rotationMap[i],c_white,1);
			
			draw_sprite_ext(spr_gui_map_hover,0,pointX,pointY,flipMap[i],1,rotationMap[i],boolean_return(connectionMap[gridX[i],gridY[i]],c_lime,color_red),.1);
			
			

		}
			
		if(componentMap[i] !="" and componentMap[i] !="_"){

			var pointX = spaceshipOffsetX+global.player.x-global.player.sprite_xoffset+(gridX[i]*32)+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(((rotationMap[i] mod 180)/90)))+boolean_return(rotationMap[i] = 180,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=270,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0)
			var pointY = spaceshipOffsetY+global.player.y-global.player.sprite_yoffset+(gridY[i]*32)+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(((rotationMap[i] mod 180)/90)))+boolean_return(rotationMap[i]=90,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=180,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0);
			
			draw_sprite_ext(asset_get_index("spr_item_"+componentMap[i]),0,pointX,pointY,flipMap[i],1,rotationMap[i],c_white,1);
		
			draw_sprite_ext(spr_gui_map_hover,0,pointX,pointY,flipMap[i],1,rotationMap[i],boolean_return(connectionMap[gridX[i],gridY[i]],c_lime,color_red),.1); 
		
		}

		
	
		
		
		
		
		
		
		
			
		
		

			
	}
}



//draw selected block


switch(layerSelected){
	
	//edit
	case 0:
		if(global.player.inventoryMouseItem!=""){
			switch(map_data(global.itemData,itemDataRole,global.player.inventoryMouseItem)){
			
				//hull
				case "material":
					
					var pointX = spaceshipOffsetX+16+global.player.x-global.player.sprite_xoffset+(matrixMouseX*32);
					var pointY = spaceshipOffsetY+16+global.player.y-global.player.sprite_yoffset+(matrixMouseY*32);
			
					draw_sprite_ext(asset_get_index("spr_hull_"+global.player.inventoryMouseItem+"_"+global.hull[hullSelected]),0,pointX,pointY,flipSelected,1,rotationSelected,boolean_return(placeable,c_white,color_red),75);
					
					break;
				
				//components
				default:
					var pointX = spaceshipOffsetX+global.player.x-global.player.sprite_xoffset+(matrixMouseX*32)+(16*map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)*(1-((rotationSelected mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)*(((rotationSelected mod 180)/90)))+boolean_return(rotationSelected = 180,32*(1-map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)),0)+boolean_return(rotationSelected=270,32*(1-map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)),0);
					var pointY = spaceshipOffsetY+global.player.y-global.player.sprite_yoffset+(matrixMouseY*32)+(16*map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)*(1-((rotationSelected mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)*(((rotationSelected mod 180)/90)))+boolean_return(rotationSelected=90,32*(1-map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)),0)+boolean_return(rotationSelected=180,32*(1-map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)),0);
		
					draw_sprite_ext(asset_get_index("spr_item_"+global.player.inventoryMouseItem),0,pointX,pointY,flipSelected,1,rotationSelected,boolean_return(placeable,c_white,color_red),.75);
					
					break;
			
			}
		
		}
		else{
			var pointX = spaceshipOffsetX+16+global.player.x-global.player.sprite_xoffset+(matrixMouseX*32);
			var pointY = spaceshipOffsetY+16+global.player.y-global.player.sprite_yoffset+(matrixMouseY*32);
			
			draw_sprite_ext(spr_gui_map_hover,0,pointX,pointY,1,1,0,c_white,.25);
					
		}
		break;
	
	//keybinds
	case 1:
	
		break;
	
	
	
}




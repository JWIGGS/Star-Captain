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
for(var i = (((cameraXStart-32) div 32) * 32) + ((global.player.x) mod 32) + (global.player.sprite_xoffset mod 32); i<((cameraXEnd+32) div 32)*32; i+=32){
	draw_line(i,cameraYStart,i,cameraYEnd);
}
for(var j = (((cameraYStart-32) div 32) * 32) + ((global.player.y) mod 32) + (global.player.sprite_yoffset mod 32); j<((cameraYEnd+32) div 32)*32; j+=32){
	draw_line(cameraXStart,j,cameraXEnd,j);
}

draw_set_alpha(1);
*/



//draw spaceship
draw_text_formatting(c_white,fa_center,fa_middle,font_item_amount);

for(var i = 0; i<length; i++){

	if(hullMap[i] !="" or componentMap[i]!=""){
		
		//spaceship
		
		if(hullMap[i] !=""){
			
			var pointX = spaceshipOffsetX+global.player.x-global.player.sprite_xoffset+spaceshipSpriteOffset+(gridX[i]*32)+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90)));
			var pointY = spaceshipOffsetY+global.player.y-global.player.sprite_yoffset+spaceshipSpriteOffset+(gridY[i]*32)+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90)));
			
			draw_sprite_ext(asset_get_index("spr_hull_"+materialMap[i]+"_"+hullMap[i]),0,pointX,pointY,flipMap[i],1,rotationMap[i],c_white,1);
			
			if(!connectionMap[gridX[i],gridY[i]]){
				draw_sprite_ext(asset_get_index("spr_hull_"+materialMap[i]+"_"+hullMap[i]),0,pointX,pointY,flipMap[i],1,rotationMap[i],color_red,wave(.25,.4,3,0));
			}
			

		}
			
		if(componentMap[i] !="" and componentMap[i] !="_"){

			var pointX = spaceshipOffsetX+global.player.x-global.player.sprite_xoffset+spaceshipSpriteOffset+(gridX[i]*32)+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(((rotationMap[i] mod 180)/90)))+boolean_return(rotationMap[i] = 180,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=270,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0)
			var pointY = spaceshipOffsetY+global.player.y-global.player.sprite_yoffset+spaceshipSpriteOffset+(gridY[i]*32)+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(((rotationMap[i] mod 180)/90)))+boolean_return(rotationMap[i]=90,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=180,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0);
			
			draw_sprite_ext(asset_get_index("spr_item_"+componentMap[i]),0,pointX,pointY,flipMap[i],1,rotationMap[i],c_white,1);

			
			if(!connectionMap[gridX[i],gridY[i]]){
				draw_sprite_ext(asset_get_index("spr_item_"+componentMap[i]),0,pointX,pointY,flipMap[i],1,rotationMap[i],color_red,wave(.25,.4,3,0));
			}
			
		}
		
		//keybinds
		
		if(layerSelected = 0 and keyMap[i]!=""){
			var pointX = spaceshipOffsetX+global.player.x-global.player.sprite_xoffset+spaceshipSpriteOffset+(gridX[i]*32)+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90)));
			var pointY = spaceshipOffsetY+global.player.y-global.player.sprite_yoffset+spaceshipSpriteOffset+(gridY[i]*32)+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90)));
			
			draw_text(pointX,pointY,keyMap[i])
			
		}			
	}
}



//draw selected block


switch(layerSelected){
	
	//edit
	case 1:
		if(global.player.inventoryMouseItem!="" and !mouse_check_button(mb_right)){
			switch(map_data(global.itemData,itemDataRole,global.player.inventoryMouseItem)){
				
				//hull
				case "material":
					
					var pointX = spaceshipOffsetX+16+global.player.x-global.player.sprite_xoffset+spaceshipSpriteOffset+(matrixMouseX*32);
					var pointY = spaceshipOffsetY+16+global.player.y-global.player.sprite_yoffset+spaceshipSpriteOffset+(matrixMouseY*32);
			
					draw_sprite_ext(asset_get_index("spr_hull_"+global.player.inventoryMouseItem+"_"+global.hull[hullSelected]),0,pointX,pointY,flipSelected,1,rotationSelected,c_white,.75);
					
					if(!placeable){
						draw_sprite_ext(asset_get_index("spr_hull_"+global.player.inventoryMouseItem+"_"+global.hull[hullSelected]),0,pointX,pointY,flipSelected,1,rotationSelected,color_red,wave(.25,.4,3,0));
					
					}
					
					
					break;
				
				//components
				default:
					var pointX = spaceshipOffsetX+global.player.x-global.player.sprite_xoffset+spaceshipSpriteOffset+(matrixMouseX*32)+(16*map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)*(1-((rotationSelected mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)*(((rotationSelected mod 180)/90)))+boolean_return(rotationSelected = 180,32*(1-map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)),0)+boolean_return(rotationSelected=270,32*(1-map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)),0);
					var pointY = spaceshipOffsetY+global.player.y-global.player.sprite_yoffset+spaceshipSpriteOffset+(matrixMouseY*32)+(16*map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)*(1-((rotationSelected mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)*(((rotationSelected mod 180)/90)))+boolean_return(rotationSelected=90,32*(1-map_data(global.itemData,itemDataWidth,global.player.inventoryMouseItem)),0)+boolean_return(rotationSelected=180,32*(1-map_data(global.itemData,itemDataHeight,global.player.inventoryMouseItem)),0);
		
					draw_sprite_ext(asset_get_index("spr_item_"+global.player.inventoryMouseItem),0,pointX,pointY,flipSelected,1,rotationSelected,c_white,.75);
					
					if(!placeable){
						draw_sprite_ext(asset_get_index("spr_item_"+global.player.inventoryMouseItem),0,pointX,pointY,flipSelected,1,rotationSelected,color_red,wave(.25,.4,3,0));
					
					}
					
					break;
			
			}
			
			
			draw_text_formatting(c_white,fa_left,fa_top,font_item_amount);
			draw_text(pointX,pointY,global.player.inventoryMouseAmount);
		
		}
		else{
			var pointX = spaceshipOffsetX+16+global.player.x-global.player.sprite_xoffset+spaceshipSpriteOffset+(matrixMouseX*32);
			var pointY = spaceshipOffsetY+16+global.player.y-global.player.sprite_yoffset+spaceshipSpriteOffset+(matrixMouseY*32);
			
			draw_sprite_ext(spr_gui_map_hover,0,pointX,pointY,1,1,0,boolean_return(mouse_check_button(mb_right),color_red,c_white),.25);
					
		}
		break;
	
	//keybinds
	case 0:
		
		var pointX = spaceshipOffsetX+16+global.player.x-global.player.sprite_xoffset+spaceshipSpriteOffset+(matrixMouseX*32);
		var pointY = spaceshipOffsetY+16+global.player.y-global.player.sprite_yoffset+spaceshipSpriteOffset+(matrixMouseY*32);
			
		draw_sprite_ext(spr_gui_map_hover,0,pointX,pointY,1,1,0,boolean_return(keyboard_check(vk_backspace) or keyboard_check(vk_delete),color_red,c_white),.25);
		
		break;
	
	
	
}




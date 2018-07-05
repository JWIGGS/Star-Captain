/// @description draw

if(inventoryMouseItem != "" and inventoryMouseAmount >0){

	if(control){
		//draw placement preview

		switch(map_data(global.itemData,itemDataClass,inventoryMouseItem)){
			case "material":
				
				//draw placement preview
				
				draw_sprite_ext(asset_get_index("spr_hull_"+inventoryMouseItem+"_"+inventoryMouseBuildHull),0,point_to_grid(mouse_x,mouse_y,spaceship,"x"),point_to_grid(mouse_x,mouse_y,spaceship,"y"),flipSelected,1,rotationSelected+spaceship.dir-90,c_white,.5);
				if(!placeable){
					draw_sprite_ext(asset_get_index("spr_hull_"+inventoryMouseItem+"_"+inventoryMouseBuildHull),0,point_to_grid(mouse_x,mouse_y,spaceship,"x"),point_to_grid(mouse_x,mouse_y,spaceship,"y"),flipSelected,1,rotationSelected+spaceship.dir-90,color_red,.25);
				}
				
				//draw hull editor
				if(keyboard_check(vk_lshift)){
					var third = 32/3;
					for(var i = 0; i<3; i++){
						for(var j = 0; j<3; j++){
				
							var pointX = point_to_grid(mouse_x,mouse_y,spaceship,"x")+rotate_around_point((i-1)*third,(j-1)*third,0,0,spaceship.dir,"x");
							var pointY = point_to_grid(mouse_x,mouse_y,spaceship,"y")+rotate_around_point((i-1)*third,(j-1)*third,0,0,spaceship.dir,"y");				

							draw_sprite_ext(asset_get_index("spr_item_"+inventoryMouseItem),0,pointX,pointY,.2+boolean_return(inventoryMouseBuild[i,j],.15,0),.2+boolean_return(inventoryMouseBuild[i,j],.15,0),spaceship.dir-90,boolean_return(inventoryMouseBuildValid,c_white,color_red),boolean_return(inventoryMouseBuild[i,j],.5,.25)+boolean_return(i = inventoryMouseBuildHoverX and j = inventoryMouseBuildHoverY,.25,0));

						}
					}
				}
				
				break;
				
			case "module":
			
				//draw placement preview
				
				draw_sprite_ext(asset_get_index("spr_item_"+inventoryMouseItem),0,point_to_grid(mouse_x,mouse_y,spaceship,"x"),point_to_grid(mouse_x,mouse_y,spaceship,"y"),flipSelected,1,rotationSelected+spaceship.dir-90,c_white,.5);
				if(!placeable){
					draw_sprite_ext(asset_get_index("spr_item_"+inventoryMouseItem),0,point_to_grid(mouse_x,mouse_y,spaceship,"x"),point_to_grid(mouse_x,mouse_y,spaceship,"y"),flipSelected,1,rotationSelected+spaceship.dir-90,color_red,.25);
				}
				break;
				
			case "attachment":
				
				//draw placement preview
				
				var rotX = boolean_return(rotationSelected = 180,gridSize*(1-map_data(global.itemData,itemDataWidth,inventoryMouseItem)),0)+boolean_return(rotationSelected=270,gridSize*(1-map_data(global.itemData,itemDataHeight,inventoryMouseItem)),0)+((gridSize/2)*map_data(global.itemData,itemDataWidth,inventoryMouseItem)*(1-((rotationSelected mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataHeight,inventoryMouseItem)*(((rotationSelected mod 180)/90)))-(gridSize/2)
				var rotY = boolean_return(rotationSelected = 90,gridSize*(1-map_data(global.itemData,itemDataWidth,inventoryMouseItem)),0)+boolean_return(rotationSelected=180,gridSize*(1-map_data(global.itemData,itemDataHeight,inventoryMouseItem)),0)+((gridSize/2)*map_data(global.itemData,itemDataHeight,inventoryMouseItem)*(1-((rotationSelected mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataWidth,inventoryMouseItem)*(((rotationSelected mod 180)/90)))-(gridSize/2)
					
				var offsetX = rotate_around_point(rotX,rotY,0,0,dir,"x");
				var offsetY = rotate_around_point(rotX,rotY,0,0,dir,"y");
				
				draw_sprite_ext(asset_get_index("spr_item_"+inventoryMouseItem),0,point_to_grid(mouse_x,mouse_y,spaceship,"x")+offsetX,point_to_grid(mouse_x,mouse_y,spaceship,"y")+offsetY,flipSelected,1,rotationSelected+spaceship.dir-90,c_white,.5);
				
				
				if(!placeable){
					draw_sprite_ext(asset_get_index("spr_item_"+inventoryMouseItem),0,point_to_grid(mouse_x,mouse_y,spaceship,"x")+offsetX,point_to_grid(mouse_x,mouse_y,spaceship,"y")+offsetY,flipSelected,1,rotationSelected+spaceship.dir-90,color_red,.25);

				}
				break;
				
				
			case "tool":
				
				//draw placement preview
				draw_sprite_ext(asset_get_index("spr_item_"+inventoryMouseItem),0,mouse_x,mouse_y,.5,.5,0,c_white,1);
				
				if(interactProgressMax!=0 and interactProgressCurrent!=0){
					draw_set_color(c_gray);
					draw_rectangle(mouse_x-8,mouse_y-8,mouse_x+8,mouse_y-6,false);
					draw_set_color(c_ltgray);
					draw_rectangle(mouse_x-8,mouse_y-8,mouse_x-8+(16*(interactProgressCurrent/interactProgressMax)),mouse_y-6,false);
				}
				
				break;
			
				
			
			
			
		}
	
	}
	
	
	


}


if(spaceship=noone){
	draw_sprite_ext(sprite_index,0,x,y,1,1,dir,c_white,1);
}
else{
	
	if(control){
		draw_sprite_ext(sprite_index,0,x,y,1,1,relativeDir,c_white,1);
	}
	else{
		draw_sprite_ext(sprite_index,0,x,y,1,1,relativeDir+dir-90,c_white,1);
	}
}










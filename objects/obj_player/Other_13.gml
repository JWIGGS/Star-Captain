/// @description tools/blocks use


matrixMouseX = point_to_matrix(mouse_x,mouse_y,spaceship,"x");
matrixMouseY = point_to_matrix(mouse_x,mouse_y,spaceship,"y");


switch(map_data(global.itemData,itemDataClass,inventoryMouseItem)){
				
	//adding blocks
	case "material":
		
		//hull editing
		if(keyboard_check(vk_lshift)){
			var third = 32/3;
			var nearestX = 0;
			var nearestY = 0;
			for(var i = 0; i<3; i++){
				for(var j = 0; j<3; j++){
				
					var pointX = point_to_grid(mouse_x,mouse_y,spaceship,"x")+rotate_around_point((i-1)*third,(j-1)*third,0,0,spaceship.dir,"x");
					var pointY = point_to_grid(mouse_x,mouse_y,spaceship,"y")+rotate_around_point((i-1)*third,(j-1)*third,0,0,spaceship.dir,"y");				
						
					if(point_distance(mouse_x,mouse_y,pointX,pointY)<point_distance(mouse_x,mouse_y,nearestX,nearestY)){
						nearestX = pointX;
						nearestY = pointY;
						inventoryMouseBuildHoverX = i;
						inventoryMouseBuildHoverY = j;
					}

				}
			}
			
			if(mouse_check_button_pressed(mb_left)){
				inventoryMouseBuild[inventoryMouseBuildHoverX,inventoryMouseBuildHoverY] = !inventoryMouseBuild[inventoryMouseBuildHoverX,inventoryMouseBuildHoverY];
			
				//interpret mouse build
				
				//for every hull block
				var match;
				inventoryMouseBuildValid = false;
				for(var i = 0; i<hullAmount; i++){
					
					//for every hull block match
					for(var j = 0; j<8; j++){
						match = true;
						
						//for every piece of hull block
						for(var k = 0; k<9; k++){
							
							match = (inventoryMouseBuild[value_to_2d(k,"x",3),value_to_2d(k,"y",3)] == map_data(global.hullData,hull_connection_index(real(string_char_at(global.hullConversion[j],k+1))),global.hull[i]));
							if(!match){
								break;	
							}
							
						}
						
						if(match){
							inventoryMouseBuildHull = global.hull[i];
							flipSelected = boolean_return(j<4,1,-1);
							rotationSelected = (j mod 4)*90;
							inventoryMouseBuildValid = true;
							break;	
						}
						
					}
					if(match){
						break;	
					}
				}


			}
			
			if(mouse_check_button_pressed(mb_right)){
				inventoryMouseBuildHull = "full";
				array_fill_2d(inventoryMouseBuild,3,3,true);
				flipSelected = 1;
				rotationSelected = 0;
				inventoryMouseBuildValid = true;
			}
			
		}
		
		//hull placing
		else{
			
			placeable = true;
			var type = "hull";
					
			if(matrixMouseX >=0 and matrixMouseX<spaceship.width and matrixMouseY>=0 and matrixMouseY<spaceship.height){
				placeable = spaceship.indexMap[matrixMouseX,matrixMouseY]=-1 or (spaceship.indexMap[matrixMouseX,matrixMouseY]!=-1 and spaceship.hullMap[spaceship.indexMap[matrixMouseX,matrixMouseY]]!="" and spaceship.wallMap[spaceship.indexMap[matrixMouseX,matrixMouseY]]="");
				
				
				
				type = boolean_return(spaceship.indexMap[matrixMouseX,matrixMouseY]=-1,"hull","wall");
				

			}


					
			if(mouse_check_button_pressed(mb_left) and placeable){
				console_log(type);
			
			
			
				//hull placement
			
				switch(type){
					case "hull":
				
						//hull placement
						with(spaceship){
							gridX[length] = other.matrixMouseX;
							gridY[length] = other.matrixMouseY;
							hullMap[length] = other.inventoryMouseBuildHull;
							hullMaterialMap[length] = other.inventoryMouseItem;
							wallMap[length] = "";
							wallMaterialMap[length] = "";
							rotationMap[length] = other.rotationSelected;
							flipMap[length] = other.flipSelected;
							componentMap[length] = "";
							refMap[length] = length;
							keyMap[length] = "";
							length ++;
				
							//update spaceship
							event_user(3);
						}
						inventoryMouseAmount --;

						break;
				
					case "wall":
				
						with(spaceship){
							//wall building
							if(hullMap[indexMap[other.matrixMouseX,other.matrixMouseY]] = "full"){
								wallMap[indexMap[other.matrixMouseX,other.matrixMouseY]] = other.inventoryMouseBuildHull;
								rotationMap[indexMap[other.matrixMouseX,other.matrixMouseY]] = other.rotationSelected;
								flipMap[indexMap[other.matrixMouseX,other.matrixMouseY]] = other.flipSelected;
							}
							else{
								wallMap[indexMap[other.matrixMouseX,other.matrixMouseY]] = hullMap[indexMap[other.matrixMouseX,other.matrixMouseY]];
							}
							
							wallMaterialMap[indexMap[other.matrixMouseX,other.matrixMouseY]] = other.inventoryMouseItem;
					
							//update spaceship
							event_user(3);
					
						}
				
						inventoryMouseAmount --;
				
						break;
				
				}


			}
		
		}

					
		break;
				
	//adding modules
	case "module":
				
		placeable = matrixMouseX >=0 and matrixMouseY >=0 and spaceship.indexMap[matrixMouseX,matrixMouseY]!=-1 and spaceship.hullMap[spaceship.indexMap[matrixMouseX,matrixMouseY]]="full" and spaceship.componentMap[spaceship.indexMap[matrixMouseX,matrixMouseY]]="";

		if(mouse_check_button_pressed(mb_left) and placeable){
			
			with(spaceship){
				rotationMap[indexMap[other.matrixMouseX,other.matrixMouseY]] = other.rotationSelected;
				flipMap[indexMap[other.matrixMouseX,other.matrixMouseY]] = other.flipSelected;
				componentMap[indexMap[other.matrixMouseX,other.matrixMouseY]] = other.inventoryMouseItem;
				
				//update spaceship
				event_user(3);
			}
						
			inventoryMouseAmount --;

		}
				
		break;
	
	//adding attachments
	case "attachment":
					
		placeable = true;
					
		//check to see if there is no current object there
					
		for(var i = 0; i<map_data(global.itemData,itemDataWidth,inventoryMouseItem);i++){
			for(var j= 0; j<map_data(global.itemData,itemDataHeight,inventoryMouseItem);j++){
									
				var placeX = round(matrixMouseX + rotate_around_point(i,j,0,0,rotationSelected+90,"x"));
				var placeY = round(matrixMouseY + rotate_around_point(i,j,0,0,rotationSelected+90,"y"));
							
				if(placeX>=0 and placeY>=0){
					var index = spaceship.indexMap[placeX,placeY];
								
					if(index!=-1){
						if(spaceship.componentMap[index] != "" or spaceship.hullMap[index] != "" ){
							placeable = false;
							break;
						}
					}
				}
									
			}
		}
					
		if(mouse_check_button_pressed(mb_left) and placeable) {

			var placeXMin = spaceshipMaxSize;
			var placeYMin = spaceshipMaxSize;
							
			var startLength = spaceship.length;
						
						
						
			for(var i = 0; i<map_data(global.itemData,itemDataWidth,inventoryMouseItem);i++){
				for(var j= 0; j<map_data(global.itemData,itemDataHeight,inventoryMouseItem);j++){
									
					var placeX = round(matrixMouseX + rotate_around_point(i,j,0,0,rotationSelected+90,"x"));
					var placeY = round(matrixMouseY + rotate_around_point(i,j,0,0,rotationSelected+90,"y"));
									
					placeXMin = boolean_return(placeX<placeXMin,placeX,placeXMin);
					placeYMin = boolean_return(placeY<placeYMin,placeY,placeYMin);
					
					
					with(spaceship){
						gridX[length] = placeX;
						gridY[length] = placeY;
						hullMap[length] = "";
						hullMaterialMap[length] = "";
						wallMap[length] = "";
						wallMaterialMap[length] = "";
						rotationMap[length] = other.rotationSelected;
						flipMap[length] = other.flipSelected;
						componentMap[length] = boolean_return(i = 0 and j = 0,other.inventoryMouseItem,"_");
						keyMap[length] = "";
						refMap[length] = startLength;
					
						length ++;
						
						//update spaceship
						event_user(3);
					
					}
									
									
	
									
									
				}
			}
						
			inventoryMouseAmount --;
	
		}
					
				
		break;
	case "tool":
		
		switch(map_data(global.itemData,itemDataSubclass,inventoryMouseItem)){
			
			case "drill":
				if(mouse_check_button_pressed(mb_left)){
				
				}
				
				
				break;
			
			
			
			
			
			
		}
		break;
				
}


//rotate selection
if(keyboard_check_pressed(ord("R"))){
	rotationSelected = wrap(rotationSelected+90,0,360);
	
	if(map_data(global.itemData,itemDataClass,inventoryMouseItem) = "material"){
		for(var i = 0; i<9; i++){
			inventoryMouseBuildBuffer[value_to_2d(i,"x",3),value_to_2d(i,"y",3)] = inventoryMouseBuild[value_to_2d(i,"x",3),value_to_2d(i,"y",3)];
		}
		
		for(var i = 0; i<9; i++){
			inventoryMouseBuild[value_to_2d(i,"x",3),value_to_2d(i,"y",3)] = inventoryMouseBuildBuffer[value_to_2d(real(string_char_at(global.hullConversion[1],i+1)),"x",3),value_to_2d(real(string_char_at(global.hullConversion[1],i+1)),"y",3)];
		}
	}
}


//flip selection
if(keyboard_check_pressed(ord("F"))){
	flipSelected *= -1;
	
	if(map_data(global.itemData,itemDataClass,inventoryMouseItem) = "material"){
		for(var i = 0; i<9; i++){
			inventoryMouseBuildBuffer[value_to_2d(i,"x",3),value_to_2d(i,"y",3)] = inventoryMouseBuild[value_to_2d(i,"x",3),value_to_2d(i,"y",3)];
		}
		
		var transformType = 4 + (((rotationSelected div 90) mod 2)*2);
		
		for(var i = 0; i<9; i++){
			inventoryMouseBuild[value_to_2d(i,"x",3),value_to_2d(i,"y",3)] = inventoryMouseBuildBuffer[value_to_2d(real(string_char_at(global.hullConversion[transformType],i+1)),"x",3),value_to_2d(real(string_char_at(global.hullConversion[transformType],i+1)),"y",3)];
		}
	}
}	
			

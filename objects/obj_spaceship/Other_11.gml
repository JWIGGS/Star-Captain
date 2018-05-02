/// @description specific block actions

for(var i = 0; i<width; i++){
	for(var j = 0; j<height; j++){
		
		if(componentMap[i,j]!=""){
			
			switch(map_data(global.itemData,itemDataRole,componentMap[i,j])){
				
				//modules
				case "module":
				
				
					break;
				
				//attachments
				case "attachment":
					if(activateMap[i,j]){
						
						//propulsion
						if(map_data(global.itemData,itemDataType,componentMap[i,j]) = "propulsion"){
							var forceTranslational = map_data(global.itemData,itemDataThrust,componentMap[i,j]);
							
							var rotX = rotate_around_point(16+(i*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i,j]),map_data(global.itemData,itemDataCogY,componentMap[i,j]),0,0,rotationMap[i,j]+90,"x")*flipMap[i,j]),16+(j*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i,j]),map_data(global.itemData,itemDataCogY,componentMap[i,j]),0,0,rotationMap[i,j]+90,"y")*flipMap[i,j]),sprite_xoffset,sprite_yoffset,dir,"x")
							var rotY = rotate_around_point(16+(i*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i,j]),map_data(global.itemData,itemDataCogY,componentMap[i,j]),0,0,rotationMap[i,j]+90,"x")*flipMap[i,j]),16+(j*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i,j]),map_data(global.itemData,itemDataCogY,componentMap[i,j]),0,0,rotationMap[i,j]+90,"y")*flipMap[i,j]),sprite_xoffset,sprite_yoffset,dir,"y")

							var forceRotational = map_data(global.itemData,itemDataThrust,componentMap[i,j]) * (point_distance(x,y,x-sprite_xoffset+rotX,y-sprite_yoffset+rotY)/inertia)
							
							spaceship_apply_force(16+(i*32),16+(j*32),rotationMap[i,j],forceTranslational,forceRotational);
						

						
						}
						
						
						
						
					}
					
				
					break;
				
				
			}
		
		}

		
		
		
		
			
	}
}

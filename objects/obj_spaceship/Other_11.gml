/// @description specific block actions

for(var i = 0; i<length; i++){
		
	if(componentMap[i]!=""){
			
		switch(map_data(global.itemData,itemDataRole,componentMap[i])){
				
			//modules
			case "module":
				
				
				break;
				
			//attachments
			case "attachment":
				if(activateMap[i]){
						
					//propulsion
					if(map_data(global.itemData,itemDataType,componentMap[i]) = "propulsion"){
						var forceTranslational = map_data(global.itemData,itemDataThrust,componentMap[i]);
							
						var rotX = rotate_around_point(16+(gridX[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"x")*flipMap[i]),16+(gridY[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"y")*flipMap[i]),sprite_xoffset,sprite_yoffset,dir,"x")
						var rotY = rotate_around_point(16+(gridX[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"x")*flipMap[i]),16+(gridY[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"y")*flipMap[i]),sprite_xoffset,sprite_yoffset,dir,"y")

						var forceRotational = map_data(global.itemData,itemDataThrust,componentMap[i]) * (point_distance(x,y,x-sprite_xoffset+rotX,y-sprite_yoffset+rotY)/inertia)
							
						spaceship_apply_force(16+(gridX[i]*32),16+(gridY[i]*32),rotationMap[i],forceTranslational,forceRotational);
						

						
					}
						
						
						
						
				}
					
				
				break;
				
				
		}
		
	}

		

}

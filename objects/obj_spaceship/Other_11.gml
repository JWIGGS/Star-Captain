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

						var forceX = spaceshipSpriteOffset-sprite_xoffset+boolean_return(rotationMap[i] = 180,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=270,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0)+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(((rotationMap[i] mod 180)/90)))+(gridX[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"x")*flipMap[i]);
						var forceY = spaceshipSpriteOffset-sprite_yoffset+boolean_return(rotationMap[i]=90,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=180,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0)+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(((rotationMap[i] mod 180)/90)))+(gridY[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"y")*flipMap[i]);
						
						spaceship_apply_force(forceX,forceY,rotationMap[i],map_data(global.itemData,itemDataThrust,componentMap[i]));
						

						
					}
						
						
						
						
				}
					
				
				break;
				
				
		}
		
	}

		

}

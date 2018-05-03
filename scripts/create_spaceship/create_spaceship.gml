var xPos = argument0; ///@param x
var yPos = argument1; ///@param y


var spaceship = instance_create_depth(xPos,yPos,0,obj_spaceship);


with(spaceship){

	length = global.spaceshipBufferLength;
	
	var maxWidth = 0;
	var maxHeight = 0;
	for(var i = 0; i<length; i++){
	
		if(gridX[i]+1>maxWidth){
			maxWidth = gridX[i]+1;	
		}
	
		if(gridY[i]+1>maxHeight){
			maxHeight = gridY[i]+1;	
		}
	
	
	}
	
	player = argument2; ///@param player

	//surface setup
	var surfaceWidth = (maxWidth*32)+128;
	var surfaceHeight = (maxHeight*32)+128;
	

	var spaceshipSurface = surface_create(surfaceWidth, surfaceHeight);
	surface_set_target(spaceshipSurface);
	
	draw_clear_alpha(c_black, 0);
	
	//stats setup
	
	var cogX = 0;
	var cogY = 0;
	var cogTotal = 0;
	

	//individual items	
	for(var i = 0; i<length; i++){
			
			
		gridX[i] = global.spaceshipBufferGridX[i];
		gridY[i] = global.spaceshipBufferGridY[i];
		hullMap[i] = global.spaceshipBufferHull[i];
		materialMap[i] = global.spaceshipBufferMaterial[i];
		rotationMap[i] = global.spaceshipBufferRotation[i];
		flipMap[i] = global.spaceshipBufferFlip[i];
		componentMap[i] = global.spaceshipBufferComponent[i];
		keymapA[i] = global.spaceshipBufferKeymapA[i];
		keymapB[i] = global.spaceshipBufferKeymapB[i];
		keymapType[i] = global.spaceshipBufferKeymapType[i];
			
		if(hullMap[i]!=""){
			draw_sprite_ext(asset_get_index("spr_hull_"+hullMap[i]+"_"+materialMap[i]),0,(gridX[i]*32)+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90))),(gridY[i]*32)+(16*(1-((rotationMap[i] mod 180)/90)))+(16*(((rotationMap[i] mod 180)/90))),flipMap[i],1,rotationMap[i],c_white,1);
				
			cogX += ((gridX[i]*32)+16+rotate_around_point(map_data(global.hullData,hullDataCogX,hullMap[i])*flipMap[i],map_data(global.hullData,hullDataCogY,hullMap[i]),0,0,rotationMap[i],"x"))*map_data(global.itemData,itemDataMass,materialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);
			cogY += ((gridY[i]*32)+16+rotate_around_point(map_data(global.hullData,hullDataCogX,hullMap[i])*flipMap[i],map_data(global.hullData,hullDataCogY,hullMap[i]),0,0,rotationMap[i],"y"))*map_data(global.itemData,itemDataMass,materialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);
				
			cogTotal += map_data(global.itemData,itemDataMass,materialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);
				
			//hull stats
			mass += map_data(global.itemData,itemDataMass,materialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);
			armorMax += map_data(global.itemData,itemDataArmor,materialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);
			armorCurrent = armorMax;
			shieldMax += map_data(global.itemData,itemDataShield,materialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);
			shieldCurrent =shieldMax;
			energyMax += map_data(global.itemData,itemDataEnergyStored,materialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);
			energyCurrent =energyMax;
				
				
		}
			
		if(componentMap[i]!=""){

			draw_sprite_ext(asset_get_index("spr_item_"+componentMap[i]),0,(gridX[i]*32)+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(((rotationMap[i] mod 180)/90)))+boolean_return(rotationMap[i] =180,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=270,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0),(gridY[i]*32)+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(((rotationMap[i] mod 180)/90)))+boolean_return(rotationMap[i]=90,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=180,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0),flipMap[i],1,rotationMap[i],c_white,1);
			
			cogX += ((gridX[i]*32)+16+rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i])*flipMap[i],map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i],"x"))*map_data(global.itemData,itemDataMass,componentMap[i]);
			cogY += ((gridX[i]*32)+16+rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i])*flipMap[i],map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i],"y"))*map_data(global.itemData,itemDataMass,componentMap[i]);
				
			cogTotal += map_data(global.itemData,itemDataMass,componentMap[i]);	
				
			//component stats
			mass += map_data(global.itemData,itemDataMass,componentMap[i]);
			armorMax += map_data(global.itemData,itemDataArmor,componentMap[i]);
			armorCurrent = armorMax;
			shieldMax += map_data(global.itemData,itemDataShield,componentMap[i]);
			shieldCurrent =shieldMax;
			energyMax += map_data(global.itemData,itemDataEnergyStored,componentMap[i]);
			energyCurrent =energyMax;

		}

			
			

	}
	
	show_debug_message(gridX);
	
	surface_reset_target();
	
	
	//calculate cog
	cogX = floor(cogX / cogTotal);
	cogY = floor(cogY / cogTotal);
	
	
	
	
	//moment of inertia
	var cogR = 0;
	var cogTotal = 0;
	
	for(var i = 0; i<length; i++){

			
		if(hullMap[i]!=""){
				
			var r2 = power(point_distance(cogX,cogY,(gridX[i]*32)+16+rotate_around_point(map_data(global.hullData,hullDataCogX,hullMap[i])*flipMap[i],map_data(global.hullData,hullDataCogY,hullMap[i]),0,0,rotationMap[i],"x"),(gridY[i]*32)+16+rotate_around_point(map_data(global.hullData,hullDataCogX,hullMap[i])*flipMap[i],map_data(global.hullData,hullDataCogY,hullMap[i]),0,0,rotationMap[i],"y")),2);
				
			cogR += map_data(global.itemData,itemDataMass,materialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i])*r2;

			cogTotal += r2;
			
		}
			
		if(componentMap[i]!=""){
				
			var r2 = power(point_distance(cogX,cogY,(gridX[i]*32)+16+rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i])*flipMap[i],map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i],"x"),(gridY[i]*32)+16+rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i])*flipMap[i],map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i],"y")),2);
				
			cogR += map_data(global.itemData,itemDataMass,componentMap[i])*r2;

			cogTotal += r2;
		}
		
		if(gridX[i]+1>width){
			width = gridX[i]+1;	
		}
	
		if(gridY[i]+1>height){
			height = gridY[i]+1;	
		}
			

	}
	
	if(cogTotal!=0){
		inertia = cogR div cogTotal;
	}
	
	

	

	//create sprite
	sprite_index = sprite_create_from_surface(spaceshipSurface,0,0,surfaceWidth,surfaceHeight,true,false,(surfaceWidth/2)+32,surfaceHeight/2);

	surface_free(spaceshipSurface);

	sprite_collision_mask(sprite_index,false,0,0,0,surfaceWidth,surfaceHeight,0,0);	

	sprite_set_offset(sprite_index,cogX,cogY);
	

}

return spaceship;


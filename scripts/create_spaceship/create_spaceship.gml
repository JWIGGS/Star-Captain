var xPos = argument0; ///@param x
var yPos = argument1; ///@param y


var spaceship = instance_create_depth(xPos,yPos,0,obj_spaceship);


with(spaceship){

	width = global.spaceshipBufferWidth;
	height = global.spaceshipBufferHeight;
	
	player = argument2; ///@param player

	//surface setup
	var surfaceWidth = (width*32)+128;
	var surfaceHeight = (height*32)+128;

	var spaceshipSurface = surface_create(surfaceWidth, surfaceHeight);
	surface_set_target(spaceshipSurface);
	
	draw_clear_alpha(c_black, 0);
	
	//stats setup
	
	var cogX = 0;
	var cogY = 0;
	var cogTotal = 0;
	

	//individual items	
	for(var i = 0; i<width; i++){
		for(var j = 0; j<height; j++){
			
			hullMap[i,j] = global.spaceshipBufferHull[i,j];
			materialMap[i,j] = global.spaceshipBufferMaterial[i,j];
			rotationMap[i,j] = global.spaceshipBufferRotation[i,j];
			flipMap[i,j] = global.spaceshipBufferFlip[i,j];
			componentMap[i,j] = global.spaceshipBufferComponent[i,j];
			keymapA[i,j] = global.spaceshipBufferKeymapA[i,j];
			keymapB[i,j] = global.spaceshipBufferKeymapB[i,j];
			keymapType[i,j] = global.spaceshipBufferKeymapType[i,j];
			
			if(hullMap[i,j]!=""){
				draw_sprite_ext(asset_get_index("spr_hull_"+hullMap[i,j]+"_"+materialMap[i,j]),0,16+(i*32)-16+(16*(1-((rotationMap[i,j] mod 180)/90)))+(16*(((rotationMap[i,j] mod 180)/90))),16+(j*32)-16+(16*(1-((rotationMap[i,j] mod 180)/90)))+(16*(((rotationMap[i,j] mod 180)/90))),flipMap[i,j],1,rotationMap[i,j],c_white,1);
				
				cogX += ((i*32)+16+rotate_around_point(map_data(global.hullData,hullDataCogX,hullMap[i,j])*flipMap[i,j],map_data(global.hullData,hullDataCogY,hullMap[i,j]),0,0,rotationMap[i,j],"x"))*map_data(global.itemData,itemDataMass,materialMap[i,j])*map_data(global.hullData,hullDataSize,hullMap[i,j]);
				cogY += ((j*32)+16+rotate_around_point(map_data(global.hullData,hullDataCogX,hullMap[i,j])*flipMap[i,j],map_data(global.hullData,hullDataCogY,hullMap[i,j]),0,0,rotationMap[i,j],"y"))*map_data(global.itemData,itemDataMass,materialMap[i,j])*map_data(global.hullData,hullDataSize,hullMap[i,j]);
				
				cogTotal += map_data(global.itemData,itemDataMass,materialMap[i,j])*map_data(global.hullData,hullDataSize,hullMap[i,j]);
				
				//hull stats
				mass += map_data(global.itemData,itemDataMass,materialMap[i,j])*map_data(global.hullData,hullDataSize,hullMap[i,j]);
				armorMax += map_data(global.itemData,itemDataArmor,materialMap[i,j])*map_data(global.hullData,hullDataSize,hullMap[i,j]);
				armorCurrent = armorMax;
				shieldMax += map_data(global.itemData,itemDataShield,materialMap[i,j])*map_data(global.hullData,hullDataSize,hullMap[i,j]);
				shieldCurrent =shieldMax;
				energyMax += map_data(global.itemData,itemDataEnergyStored,materialMap[i,j])*map_data(global.hullData,hullDataSize,hullMap[i,j]);
				energyCurrent =energyMax;
				
				
			}
			
			if(componentMap[i,j]!=""){
				draw_sprite_ext(asset_get_index("spr_item_"+componentMap[i,j]),0,16+(i*32)-16+(16*(1-((rotationMap[i,j] mod 180)/90)))+(16*(((rotationMap[i,j] mod 180)/90))),16+(j*32)-16+(16*(1-((rotationMap[i,j] mod 180)/90)))+(16*(((rotationMap[i,j] mod 180)/90))),flipMap[i,j],1,rotationMap[i,j],c_white,1);
			
				cogX += ((i*32)+16+rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i,j])*flipMap[i,j],map_data(global.itemData,itemDataCogY,componentMap[i,j]),0,0,rotationMap[i,j],"x"))*map_data(global.itemData,itemDataMass,componentMap[i,j]);
				cogY += ((j*32)+16+rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i,j])*flipMap[i,j],map_data(global.itemData,itemDataCogY,componentMap[i,j]),0,0,rotationMap[i,j],"y"))*map_data(global.itemData,itemDataMass,componentMap[i,j]);
				
				cogTotal += map_data(global.itemData,itemDataMass,componentMap[i,j]);	
				
				//component stats
				mass += map_data(global.itemData,itemDataMass,componentMap[i,j]);
				armorMax += map_data(global.itemData,itemDataArmor,componentMap[i,j]);
				armorCurrent = armorMax;
				shieldMax += map_data(global.itemData,itemDataShield,componentMap[i,j]);
				shieldCurrent =shieldMax;
				energyMax += map_data(global.itemData,itemDataEnergyStored,componentMap[i,j]);
				energyCurrent =energyMax;

			}
			
			if(keymapA[i,j] != "" or keymapB[i,j] !=""){
				var newControl = true;
				
				for(var k = 0; k<array_length_1d(controlListX); k++){
					if(controlListX[k]!=-1 and controlListY[k]!=-1){
						if(keymapA[controlListX[k],controlListY[k]] = keymapA[i,j] and keymapB[controlListX[k],controlListY[k]] = keymapB[i,j]){
							newControl = false;
							break;
						}
					}
				}
				
				
				if(newControl){
					controlListX[array_length_1d(controlListX)] = i;
					controlListY[array_length_1d(controlListY)] = j;
				}
			}

			
			
			
			
			
			
		}
	}
	
	surface_reset_target();
	
	
	//calculate cog
	cogX = floor(cogX / cogTotal);
	cogY = floor(cogY / cogTotal);
	
	
	
	
	//moment of inertia
	var cogR = 0;
	var cogTotal = 0;
	
	for(var i = 0; i<width; i++){
		for(var j = 0; j<height; j++){
			
			if(hullMap[i,j]!=""){
				
				var r2 = power(point_distance(cogX,cogY,(i*32)+16+rotate_around_point(map_data(global.hullData,hullDataCogX,hullMap[i,j])*flipMap[i,j],map_data(global.hullData,hullDataCogY,hullMap[i,j]),0,0,rotationMap[i,j],"x"),(j*32)+16+rotate_around_point(map_data(global.hullData,hullDataCogX,hullMap[i,j])*flipMap[i,j],map_data(global.hullData,hullDataCogY,hullMap[i,j]),0,0,rotationMap[i,j],"y")),2);
				
				cogR += map_data(global.itemData,itemDataMass,materialMap[i,j])*map_data(global.hullData,hullDataSize,hullMap[i,j])*r2;

				cogTotal += r2;
			
			}
			
			if(componentMap[i,j]!=""){
				
				var r2 = power(point_distance(cogX,cogY,(i*32)+16+rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i,j])*flipMap[i,j],map_data(global.itemData,itemDataCogY,componentMap[i,j]),0,0,rotationMap[i,j],"x"),(j*32)+16+rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i,j])*flipMap[i,j],map_data(global.itemData,itemDataCogY,componentMap[i,j]),0,0,rotationMap[i,j],"y")),2);
				
				cogR += map_data(global.itemData,itemDataMass,componentMap[i,j])*r2;

				cogTotal += r2;
			}
			
			
		}
	}
	
	inertia = cogR div cogTotal;
	
	

	

	//create sprite
	sprite_index = sprite_create_from_surface(spaceshipSurface,0,0,surfaceWidth,surfaceHeight,true,false,(surfaceWidth/2)+32,surfaceHeight/2);

	surface_free(spaceshipSurface);

	sprite_collision_mask(sprite_index,false,0,0,0,surfaceWidth,surfaceHeight,0,0);	

	sprite_set_offset(sprite_index,cogX,cogY);
	

}

return spaceship;


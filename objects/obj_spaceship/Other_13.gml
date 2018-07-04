/// @description update spaceship

//update width and height
width = 0;
height = 0;
var minWidth = spaceshipMaxSize;
var minHeight = spaceshipMaxSize;

var xShift = 0;
var yShift = 0;

for(var i = 0; i<length; i++){
	
	if(gridX[i]+1>width){
		width = gridX[i]+1;	
	}
	
	if(gridY[i]+1>height){
		height = gridY[i]+1;	
	}
	
	if(gridX[i]<minWidth){
		minWidth = gridX[i];	
	}
	if(gridY[i]<minHeight){
		minHeight = gridY[i];	
	}
	
	

}

if(length = 0){
	minWidth = 0;
	minHeight = 0;
}


for(var i = 0; i<length; i++){
	gridX[i] -= minWidth;
}
width -= minWidth;
xShift += gridSize*minWidth;


for(var i = 0; i<length; i++){
	gridY[i] -= minHeight;
}
height -= minHeight;
yShift += gridSize*minHeight;

//update index map
for(var i = 0; i<length; i++){
	if(hullMap[i]!="" or componentMap[i]!=""){
		indexMap[gridX[i],gridY[i]] = i;
	}
}

/////

//populate connection directions
array_fill_2d(connectionMap,width,height,false);
array_fill_2d(connectionMapDirection,length,4,false);
array_fill_2d(indexMap,width,height,-1);

for(var i = 0; i<length; i++){
	
	if(hullMap[i]!="" or componentMap[i]!=""){
		indexMap[gridX[i],gridY[i]] = i;
	}
		
	if(hullMap[i]!=""){
		//rotation
		for(var j = 0; j<4; j++){
			connectionMapDirection[i,j] = map_data(global.hullData,wrap(hullDataConnectionRight+j-(rotationMap[i] div 90),hullDataConnectionRight,hullDataConnectionDown+1),hullMap[i]);
		}
		
		//flips
		if(flipMap[i]=-1){
			var hold = connectionMapDirection[i,wrap((rotationMap[i] div 90),0,4)];
			connectionMapDirection[i,wrap((rotationMap[i] div 90),0,4)] = connectionMapDirection[i,wrap((rotationMap[i] div 90)+2,0,4)];
			connectionMapDirection[i,wrap((rotationMap[i] div 90)+2,0,4)] = hold;
			
		}
	}
	
	else if(componentMap[i]!="" and componentMap[i]!="_"){
		//rotation
		for(var j = 0; j<4; j++){
			connectionMapDirection[i,j] = map_data(global.itemData,wrap(itemDataConnectionRight+j-(rotationMap[i] div 90),itemDataConnectionRight,itemDataConnectionDown+1),componentMap[i]);
		}
		
		//flips
		if(flipMap[i]=-1){
			var hold = connectionMapDirection[i,wrap((rotationMap[i] div 90),0,4)];
			connectionMapDirection[i,wrap((rotationMap[i] div 90),0,4)] = connectionMapDirection[i,wrap((rotationMap[i] div 90)+2,0,4)];
			connectionMapDirection[i,wrap((rotationMap[i] div 90)+2,0,4)] = hold;
		}
	}

}



//set starting connection
for(var i = 0; i<length; i++){
	if(hullMap[i]!=""){
		connection_expand(gridX[i],gridY[i]);
		break;
	}
}


//expand component connections
for(var i = 0; i<length; i++){
	if(componentMap[i]!="" and componentMap[i]!="_" and map_data(global.itemData,itemDataClass,componentMap[i])="attachment"){
		
		var horizontalCheck = map_data(global.itemData,itemDataConnectionUp,componentMap[i]);
		
		var checkLength = boolean_return(horizontalCheck,map_data(global.itemData,itemDataWidth,componentMap[i]),map_data(global.itemData,itemDataHeight,componentMap[i]));

		var checkAngle = rotationMap[i] + boolean_return(horizontalCheck,0,90)+boolean_return(flipMap[i]=-1,180,0);
		
		var checkXStart = gridX[i] - round(rotate_around_point(1,0,0,0,checkAngle,"x"));
		var checkYStart = gridY[i] - round(rotate_around_point(1,0,0,0,checkAngle,"y"));

		
		var connected = true;

		for(var j = 0; j<checkLength; j++){
			
			if(connected){
				var checkX = checkXStart - round(rotate_around_point(j,0,0,0,checkAngle-90,"x"));
				var checkY = checkYStart - round(rotate_around_point(j,0,0,0,checkAngle-90,"y"));
			
				connected = checkX>=0 and checkX<width and checkY>=0 and checkY<height and indexMap[checkX,checkY]!=-1 and hullMap[indexMap[checkX,checkY]]!="" and connectionMap[checkX,checkY] and connectionMapDirection[indexMap[checkX,checkY],wrap((checkAngle div 90)-1,0,4)];
			}
			else{
				break;	
			}
			
		}
		
		connectionMap[gridX[i],gridY[i]] = connected;

	}
	
}

/////

//max width and height
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

//surface setup
var surfaceWidth = (maxWidth*gridSize)+(spaceshipSpriteOffset*2);
var surfaceHeight = (maxHeight*gridSize)+(spaceshipSpriteOffset*2);
	

var spaceshipSurfaceHull = surface_create(surfaceWidth, surfaceHeight);
surface_set_target(spaceshipSurfaceHull);
draw_clear_alpha(c_black, 0);
surface_reset_target();
	
var spaceshipSurfaceComponents = surface_create(surfaceWidth, surfaceHeight);
surface_set_target(spaceshipSurfaceComponents);
draw_clear_alpha(c_black, 0);
surface_reset_target();
	
//stats setup
	
var cogX = 0;
var cogY = 0;
var cogTotal = 0;
	

//individual items	
for(var i = 0; i<length; i++){
			
	if(hullMap[i]!=""){
			
		surface_set_target(spaceshipSurfaceHull);
		draw_sprite_ext(asset_get_index("spr_hull_"+hullMaterialMap[i]+"_"+hullMap[i]),0,spaceshipSpriteOffset+(gridX[i]*gridSize)+((gridSize/2)*(1-((rotationMap[i] mod 180)/90)))+((gridSize/2)*(((rotationMap[i] mod 180)/90))),spaceshipSpriteOffset+(gridY[i]*gridSize)+((gridSize/2)*(1-((rotationMap[i] mod 180)/90)))+((gridSize/2)*(((rotationMap[i] mod 180)/90))),flipMap[i],1,rotationMap[i],color_hull,1);
		surface_reset_target();	
			
		cogX += ((gridX[i]*gridSize)+(gridSize/2)+rotate_around_point(map_data(global.hullData,hullDataCogX,hullMap[i])*flipMap[i],map_data(global.hullData,hullDataCogY,hullMap[i]),0,0,rotationMap[i]+90,"x"))*map_data(global.itemData,itemDataMass,hullMaterialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);
		cogY += ((gridY[i]*gridSize)+(gridSize/2)+rotate_around_point(map_data(global.hullData,hullDataCogX,hullMap[i])*flipMap[i],map_data(global.hullData,hullDataCogY,hullMap[i]),0,0,rotationMap[i]+90,"y"))*map_data(global.itemData,itemDataMass,hullMaterialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);

		cogTotal += map_data(global.itemData,itemDataMass,hullMaterialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);
				
		//hull stats
		mass += map_data(global.itemData,itemDataMass,hullMaterialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);
		armorMax += map_data(global.itemData,itemDataArmor,hullMaterialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);
		armorCurrent = armorMax;
		shieldMax += map_data(global.itemData,itemDataShield,hullMaterialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);
		shieldCurrent =shieldMax;
		energyMax += map_data(global.itemData,itemDataEnergyStored,hullMaterialMap[i])*map_data(global.hullData,hullDataSize,hullMap[i]);
		energyCurrent =energyMax;
				
				
	}
		
	if(wallMap[i]!=""){
			
		surface_set_target(spaceshipSurfaceComponents);
		draw_sprite_ext(asset_get_index("spr_hull_"+wallMaterialMap[i]+"_"+wallMap[i]),0,spaceshipSpriteOffset+(gridX[i]*gridSize)+((gridSize/2)*(1-((rotationMap[i] mod 180)/90)))+((gridSize/2)*(((rotationMap[i] mod 180)/90))),spaceshipSpriteOffset+(gridY[i]*gridSize)+((gridSize/2)*(1-((rotationMap[i] mod 180)/90)))+((gridSize/2)*(((rotationMap[i] mod 180)/90))),flipMap[i],1,rotationMap[i],c_white,1);
		surface_reset_target();	
			
		cogX += ((gridX[i]*gridSize)+(gridSize/2)+rotate_around_point(map_data(global.hullData,hullDataCogX,wallMap[i])*flipMap[i],map_data(global.hullData,hullDataCogY,wallMap[i]),0,0,rotationMap[i]+90,"x"))*map_data(global.itemData,itemDataMass,wallMaterialMap[i])*map_data(global.hullData,hullDataSize,wallMap[i]);
		cogY += ((gridY[i]*gridSize)+(gridSize/2)+rotate_around_point(map_data(global.hullData,hullDataCogX,wallMap[i])*flipMap[i],map_data(global.hullData,hullDataCogY,wallMap[i]),0,0,rotationMap[i]+90,"y"))*map_data(global.itemData,itemDataMass,wallMaterialMap[i])*map_data(global.hullData,hullDataSize,wallMap[i]);

		cogTotal += map_data(global.itemData,itemDataMass,wallMaterialMap[i])*map_data(global.hullData,hullDataSize,wallMap[i]);
				
		//hull stats
		mass += map_data(global.itemData,itemDataMass,wallMaterialMap[i])*map_data(global.hullData,hullDataSize,wallMap[i]);
		armorMax += map_data(global.itemData,itemDataArmor,wallMaterialMap[i])*map_data(global.hullData,hullDataSize,wallMap[i]);
		armorCurrent = armorMax;
		shieldMax += map_data(global.itemData,itemDataShield,wallMaterialMap[i])*map_data(global.hullData,hullDataSize,wallMap[i]);
		shieldCurrent =shieldMax;
		energyMax += map_data(global.itemData,itemDataEnergyStored,wallMaterialMap[i])*map_data(global.hullData,hullDataSize,wallMap[i]);
		energyCurrent =energyMax;
				
				
	}
			
	if(componentMap[i]!="" and componentMap[i]!="_"){
			
		surface_set_target(spaceshipSurfaceComponents);
		draw_sprite_ext(asset_get_index("spr_item_"+componentMap[i]),0,spaceshipSpriteOffset+(gridX[i]*gridSize)+((gridSize/2)*map_data(global.itemData,itemDataWidth,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataHeight,componentMap[i])*(((rotationMap[i] mod 180)/90)))+boolean_return(rotationMap[i] =180,gridSize*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=270,gridSize*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0),spaceshipSpriteOffset+(gridY[i]*gridSize)+((gridSize/2)*map_data(global.itemData,itemDataHeight,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataWidth,componentMap[i])*(((rotationMap[i] mod 180)/90)))+boolean_return(rotationMap[i]=90,gridSize*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=180,gridSize*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0),flipMap[i],1,rotationMap[i],c_white,1);
		surface_reset_target();

		var rotX = boolean_return(rotationMap[i] = 180,gridSize*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=270,gridSize*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0)+((gridSize/2)*map_data(global.itemData,itemDataWidth,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataHeight,componentMap[i])*(((rotationMap[i] mod 180)/90)))+(gridX[i]*gridSize)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"x")*flipMap[i])
		var rotY = boolean_return(rotationMap[i]=90,gridSize*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=180,gridSize*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0)+((gridSize/2)*map_data(global.itemData,itemDataHeight,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataWidth,componentMap[i])*(((rotationMap[i] mod 180)/90)))+(gridY[i]*gridSize)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"y")*flipMap[i])

		cogX += rotX*map_data(global.itemData,itemDataMass,componentMap[i]);
		cogY += rotY*map_data(global.itemData,itemDataMass,componentMap[i]);
				
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

	
	
//calculate cog
cogX = (cogX / cogTotal)+spaceshipSpriteOffset;
cogY = (cogY / cogTotal)+spaceshipSpriteOffset;
	
	

//create sprites
var offsetXPrev = sprite_xoffset;
var offsetYPrev = sprite_yoffset;
	
spriteHull = sprite_create_from_surface(spaceshipSurfaceHull,0,0,surfaceWidth,surfaceHeight,true,false,(surfaceWidth/2)+gridSize,surfaceHeight/2);
surface_free(spaceshipSurfaceHull);
sprite_collision_mask(spriteHull,false,0,0,0,surfaceWidth,surfaceHeight,0,0);	
sprite_set_offset(spriteHull,cogX,cogY);
	
	
spriteComponent = sprite_create_from_surface(spaceshipSurfaceComponents,0,0,surfaceWidth,surfaceHeight,true,false,(surfaceWidth/2)+gridSize,surfaceHeight/2);
surface_free(spaceshipSurfaceComponents);
sprite_collision_mask(spriteComponent,false,0,0,0,surfaceWidth,surfaceHeight,0,0);	
sprite_set_offset(spriteComponent,cogX,cogY);
sprite_index = spriteComponent;




xShift += sprite_xoffset - offsetXPrev;
yShift += sprite_yoffset - offsetYPrev;


with(obj_player){
	if(spaceship = other.id){
		relativeX -= xShift;
		relativeY -= yShift;
	}
}

x += rotate_around_point(xShift,yShift,0,0,dir,"x");
y += rotate_around_point(xShift,yShift,0,0,dir,"y");




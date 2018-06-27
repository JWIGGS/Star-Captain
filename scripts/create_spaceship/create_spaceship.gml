var xPos = argument0; ///@param x
var yPos = argument1; ///@param y


var spaceship = instance_create_depth(xPos,yPos,0,obj_spaceship);


with(spaceship){

	length = global.spaceshipBufferLength;
	
	for(var i = 0; i<length; i++){
			
		gridX[i] = global.spaceshipBufferGridX[i];
		gridY[i] = global.spaceshipBufferGridY[i];
		
		hullMap[i] = global.spaceshipBufferHull[i];
		hullMaterialMap[i] = global.spaceshipBufferHullMaterial[i];
		
		wallMap[i] = global.spaceshipBufferWall[i];
		wallMaterialMap[i] = global.spaceshipBufferWallMaterial[i];
		
		rotationMap[i] = global.spaceshipBufferRotation[i];
		flipMap[i] = global.spaceshipBufferFlip[i];
		
		componentMap[i] = global.spaceshipBufferComponent[i];
		keyMap[i] = global.spaceshipBufferKey[i];
		refMap[i] = global.spaceshipBufferRef[i];

		
		
		
	}

	player = argument2; ///@param player

	//update spaceship
	event_user(3);
	

	
	
	

	
	

}

return spaceship;


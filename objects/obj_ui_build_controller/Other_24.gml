/// @description end script

var createX = global.player.x;
var createY = global.player.y;
instance_destroy(global.player);

for(var i = 0; i<length; i++){
	
	global.spaceshipBufferGridX[i] = gridX[i];
	global.spaceshipBufferGridY[i] = gridY[i];
	global.spaceshipBufferRef[i] = refMap[i];
	global.spaceshipBufferHull[i] = hullMap[i];
	global.spaceshipBufferMaterial[i] = materialMap[i];
	global.spaceshipBufferRotation[i] = rotationMap[i];
	global.spaceshipBufferFlip[i] = flipMap[i];
	global.spaceshipBufferComponent[i] = componentMap[i];
	global.spaceshipBufferKey[i] = keyMap[i];
}
global.spaceshipBufferLength = length;

global.player = create_spaceship(createX,createY,true);

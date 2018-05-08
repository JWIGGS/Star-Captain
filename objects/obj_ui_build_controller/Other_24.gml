/// @description end script

//clear buffer
array_fill_1d(global.spaceshipBufferGridX,spaceshipMaxSize,0);
array_fill_1d(global.spaceshipBufferGridY,spaceshipMaxSize,0);
array_fill_1d(global.spaceshipBufferHull,spaceshipMaxSize,"");
array_fill_1d(global.spaceshipBufferMaterial,spaceshipMaxSize,"iron");
array_fill_1d(global.spaceshipBufferRotation,spaceshipMaxSize,0);
array_fill_1d(global.spaceshipBufferFlip,spaceshipMaxSize,1);
array_fill_1d(global.spaceshipBufferComponent,spaceshipMaxSize,"");
array_fill_1d(global.spaceshipBufferKeymapA,spaceshipMaxSize,"");
array_fill_1d(global.spaceshipBufferKeymapB,spaceshipMaxSize,"");
array_fill_1d(global.spaceshipBufferKeymapType,spaceshipMaxSize,"or");



var createX = global.player.x;
var createY = global.player.y;
instance_destroy(global.player);

for(var i = 0; i<length; i++){
	
	global.spaceshipBufferGridX[i] = gridX[i];
	global.spaceshipBufferGridY[i] = gridY[i];
	global.spaceshipBufferHull[i] = hullMap[i];
	global.spaceshipBufferMaterial[i] = materialMap[i];
	global.spaceshipBufferRotation[i] = rotationMap[i];
	global.spaceshipBufferFlip[i] = flipMap[i];
	global.spaceshipBufferComponent[i] = componentMap[i];
	global.spaceshipBufferKeymapA[i] = keymapA[i];
	global.spaceshipBufferKeymapB[i] = keymapB[i];
	global.spaceshipBufferKeymapType[i] = keymapType[i];
}
global.spaceshipBufferLength = length;

global.player = create_spaceship(createX,createY,true);

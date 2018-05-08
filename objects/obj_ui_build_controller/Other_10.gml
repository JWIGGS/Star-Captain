/// @description load spaceship from player

spaceshipOffsetX = 0;
spaceshipOffsetY = 0;

length = global.player.length;

for(var i = 0; i<length; i++){

	gridX[i] = global.player.gridX[i];
	gridY[i] = global.player.gridY[i];
	gridRefX[i] = global.player.gridX[i];
	gridRefY[i] = global.player.gridY[i];
	hullMap[i] = global.player.hullMap[i];
	materialMap[i] = global.player.materialMap[i];
	rotationMap[i] = global.player.rotationMap[i];
	flipMap[i] = global.player.flipMap[i];
	componentMap[i] = global.player.componentMap[i];
	keymapA[i] = global.player.keymapA[i];
	keymapB[i] = global.player.keymapB[i];
	keymapType[i] = global.player.keymapType[i];
}




//update connections
event_user(1);


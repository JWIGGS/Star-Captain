/// @description load spaceship from player

length = global.player.length;

gridX[0] = 0;
array_fill_1d(gridX,spaceshipMaxSize,0);
gridY[0] = 0;
array_fill_1d(gridY,spaceshipMaxSize,0);
hullMap[0] = "";
array_fill_1d(hullMap,spaceshipMaxSize,"");
materialMap[0] = "";
array_fill_1d(materialMap,spaceshipMaxSize,"");
rotationMap[0] = 0;
array_fill_1d(rotationMap,spaceshipMaxSize,0);
flipMap[0] = 1;
array_fill_1d(flipMap,spaceshipMaxSize,1);
componentMap[0] = "";
array_fill_1d(componentMap,spaceshipMaxSize,"");
keymapA[0] = "";
array_fill_1d(keymapA,spaceshipMaxSize,"");
keymapB[0] = "";
array_fill_1d(keymapB,spaceshipMaxSize,"");
keymapType[0] = "";
array_fill_1d(keymapType,spaceshipMaxSize,"");
connectionMap[0] = false;
array_fill_1d(connectionMap,spaceshipMaxSize,false);


for(var i = 0; i<length; i++){

	gridX[i] = global.player.gridX[i];
	gridY[i] = global.player.gridY[i];
	hullMap[i] = global.player.hullMap[i];
	materialMap[i] = global.player.materialMap[i];
	rotationMap[i] = global.player.rotationMap[i];
	flipMap[i] = global.player.flipMap[i];
	componentMap[i] = global.player.componentMap[i];
	keymapA[i] = global.player.keymapA[i];
	keymapB[i] = global.player.keymapB[i];
	keymapType[i] = global.player.keymapType[i];


}

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

spaceshipOffsetX = ((maxWidth div 2)*32);
spaceshipOffsetY = ((maxHeight div 2)*32);

length = spaceshipMaxSize;


//update connections
event_user(1);


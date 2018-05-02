/// @description load spaceship from player

width = global.player.width;
height = global.player.height;

gridOffsetX = (spaceshipMaxSize div 2)-(width div 2)-1;
gridOffsetY = (spaceshipMaxSize div 2)-(height div 2)-1;

spaceshipOffsetX = (gridOffsetX*32) + ((width div 2)*32);
spaceshipOffsetY = (gridOffsetY*32) + ((height div 2)*32);


hullMap[0,0] = "";
array_fill_2d(hullMap,width,height,"");
materialMap[0,0] = "";
array_fill_2d(materialMap,width,height,"");
rotationMap[0,0] = 0;
array_fill_2d(rotationMap,width,height,0);
flipMap[0,0] = 1;
array_fill_2d(flipMap,width,height,1);
componentMap[0,0] = "";
array_fill_2d(componentMap,width,height,"");
keymapA[0,0] = "";
array_fill_2d(keymapA,width,height,"");
keymapB[0,0] = "";
array_fill_2d(keymapB,width,height,"");
keymapType[0,0] = "";
array_fill_2d(keymapType,width,height,"");
connectionMap[0,0] = false;
array_fill_2d(connectionMap,width,height,false);


for(var i = 0; i<width; i++){
	for(var j = 0; j<height; j++){
		
		hullMap[i+gridOffsetX,j+gridOffsetY] = global.player.hullMap[i,j];
		materialMap[i+gridOffsetX,j+gridOffsetY] = global.player.materialMap[i,j];
		rotationMap[i+gridOffsetX,j+gridOffsetY] = global.player.rotationMap[i,j];
		flipMap[i+gridOffsetX,j+gridOffsetY] = global.player.flipMap[i,j];
		componentMap[i+gridOffsetX,j+gridOffsetY] = global.player.componentMap[i,j];
		keymapA[i+gridOffsetX,j+gridOffsetY] = global.player.keymapA[i,j];
		keymapB[i+gridOffsetX,j+gridOffsetY] = global.player.keymapB[i,j];
		keymapType[i+gridOffsetX,j+gridOffsetY] = global.player.keymapType[i,j];

	
	
	}
}

width = spaceshipMaxSize;
height = spaceshipMaxSize;


//update connections
event_user(1);


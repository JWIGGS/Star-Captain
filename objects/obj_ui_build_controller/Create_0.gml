/// @description vars

active = false;

xPos = displayWidth/2;
yPos = 64;

matrixMouseX = -1;
matrixMouseY = -1;

gridPositionX = -1;
gridPositionY = -1;


width = spaceshipMaxSize;
height = spaceshipMaxSize;

gridOffsetX = 0;
gridOffsetY = 0;

hullMap[0,0] = "";
array_fill_2d(hullMap,spaceshipMaxSize,spaceshipMaxSize,"");
materialMap[0,0] = "";
array_fill_2d(materialMap,spaceshipMaxSize,spaceshipMaxSize,"");
rotationMap[0,0] = 0;
array_fill_2d(rotationMap,spaceshipMaxSize,spaceshipMaxSize,0);
flipMap[0,0] = 1;
array_fill_2d(flipMap,spaceshipMaxSize,spaceshipMaxSize,1);
componentMap[0,0] = "";
array_fill_2d(componentMap,spaceshipMaxSize,spaceshipMaxSize,"");
keymapA[0,0] = "";
array_fill_2d(keymapA,spaceshipMaxSize,spaceshipMaxSize,"");
keymapB[0,0] = "";
array_fill_2d(keymapB,spaceshipMaxSize,spaceshipMaxSize,"");
keymapType[0,0] = "";
array_fill_2d(keymapType,spaceshipMaxSize,spaceshipMaxSize,"");
connectionMap[0,0] = false;
array_fill_2d(connectionMap,spaceshipMaxSize,spaceshipMaxSize,false);




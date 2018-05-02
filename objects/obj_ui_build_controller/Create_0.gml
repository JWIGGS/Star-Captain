/// @description vars

active = false;

xPos = displayWidth/2;
yPos = 64;

matrixMouseX = -1;
matrixMouseY = -1;

gridPositionX = -1;
gridPositionY = -1;


length = spaceshipMaxSize;

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




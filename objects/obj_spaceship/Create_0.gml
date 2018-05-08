/// @description initialize spaceship

//state
player = false;
active = true;

//size
length = spaceshipMaxSize;
width = 0;
height = 0;


//maps
gridX[0] = 0;
array_fill_1d(gridX,length,0);
gridY[0] = 0;
array_fill_1d(gridY,length,0);
hullMap[0] = "";
array_fill_1d(hullMap,length,"");
materialMap[0] = "";
array_fill_1d(materialMap,length,"");
rotationMap[0] = 0;
array_fill_1d(rotationMap,length,0);
flipMap[0] = 1;
array_fill_1d(flipMap,length,1);
componentMap[0] = "";
array_fill_1d(componentMap,length,"");
keymapA[0] = "";
array_fill_1d(keymapA,length,"");
keymapB[0] = "";
array_fill_1d(keymapB,length,"");
keymapType[0] = "";
array_fill_1d(keymapType,length,"");



//movement
inertia = 0;
spdX = 0;
spdY = 0;
accelX = 0;
accelY = 0;
spdXPrev = 0;
spdYPrev = 0;
spdAngle = 0;
dir = 90;

//stats
mass = 0;
armorMax = 0;
armorCurrent = 0;
shieldMax = 0;
shieldCurrent = 0;
energyMax = 0;
energyCurrent = 0;

//control presses
keyA[0] = false;
array_fill_1d(keyA,length,false);
keyB[0] = false;
array_fill_1d(keyB,length,false);
activateMap[0] = false;
array_fill_1d(activateMap,length,false);


//inventory
inventoryPageSize = 150;
inventoryPageSelected = 0;
inventoryPages = 9;
inventoryItem[0,0] = "";
array_fill_2d(inventoryItem,inventoryPages,inventoryPageSize,"");
inventoryAmount[0,0] = 0;
array_fill_2d(inventoryAmount,inventoryPages,inventoryPageSize,0);
inventoryReferenceX[0,0] = -1;
array_fill_2d(inventoryReferenceX,inventoryPages,inventoryPageSize,-1);
inventoryReferenceY[0,0] = -1;
array_fill_2d(inventoryReferenceY,inventoryPages,inventoryPageSize,-1);

inventorySelectionPage = -1;
inventorySelectionX = -1;
inventorySelectionY = -1;
inventorySelectionWidth = 0;
inventorySelectionHeight = 0;

inventoryCraftingItem = "";

//default items
for(var i = 0; i<itemAmount; i++){
	inventory_add_item(global.item[i],99,id);
}

inventoryMouseItem = "";
inventoryMouseAmount = 0;
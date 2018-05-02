/// @description initialize spaceship

player = false;
active = true;

width = spaceshipMaxSize;
height = spaceshipMaxSize;


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

controlListX[0] = -1;
controlListY[0] = -1;




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

//control

keyA[0,0] = false;
array_fill_2d(keyA,width,height,false);
keyB[0,0] = false;
array_fill_2d(keyB,width,height,false);
activateMap[0,0] = false;
array_fill_2d(activateMap,width,height,false);


rof[0,0] = false;
array_fill_2d(rof,width,height,0);


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
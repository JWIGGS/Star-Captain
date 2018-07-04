/// @description vars

control = true;
spaceship = noone;

relativeX = 0;
relativeY = 0;
relativeDir = 0;

//physics
spdX = 0;
spdY = 0;
spdMove = 22.4; //1.4 m/s average walk speed
mass = 70;
dir = 90;
spdAngle = 0;


//inventory display

inventoryActive = false;

inventoryXPos = displayWidth/2;
inventoryYPos = 64;

inventoryGridSpacing = 48;

inventoryGridWidth = 8;
inventoryGridHeight = 6;

inventoryGridX = (-inventoryGridWidth*(inventoryGridSpacing/2))+(inventoryGridSpacing/2);
inventoryGridY = 56;

inventoryGridHover[0,0] = false;
array_fill_2d(inventoryGridHover,inventoryGridWidth,inventoryGridHeight,false);

inventoryGridMouseHover[0,0] = false;
array_fill_2d(inventoryGridMouseHover,inventoryGridWidth,inventoryGridHeight,false);

inventoryGridMouseHoverX = -1;
inventoryGridMouseHoverY = -1;

inventoryPageHover[0] = false;
array_fill_1d(inventoryPageHover,9,false);

//inventory variables

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

inventoryReferenceHotkey[0] = -1;
array_fill_1d(inventoryReferenceHotkey,10,-1);

inventorySelectionPage = -1;
inventorySelectionX = -1;
inventorySelectionY = -1;
inventorySelectionWidth = 0;
inventorySelectionHeight = 0;

inventoryMouseItem = "";
inventoryMouseAmount = 0;

inventoryMouseBuild[0,0] = true;
array_fill_2d(inventoryMouseBuild,3,3,true);
inventoryMouseBuildBuffer[0,0] = true;
array_fill_2d(inventoryMouseBuildBuffer,3,3,true);
inventoryMouseBuildHoverX = 0;
inventoryMouseBuildHoverY = 0;
inventoryMouseBuildHull = "full";
inventoryMouseBuildValid = true;
inventoryMouseBuildType = false;


//default item fill
for(var i = 1; i<itemAmount; i++){
	inventory_add_item(global.item[i],map_data(global.itemData,itemDataStack,global.item[i])*2,id);
}

//item placement
rotationSelected = 0;
flipSelected = 1;
placeable = true;











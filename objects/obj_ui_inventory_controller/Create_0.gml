/// @description vars

active = false;

xPos = displayWidth/2;
yPos = 64;

inventoryGridWidth = 15;
inventoryGridHeight = 10;
inventoryGridSpacing = 48;

inventoryGridX = (-inventoryGridWidth*(inventoryGridSpacing/2))+(inventoryGridSpacing/2);
inventoryGridY = 56;

inventoryGridHover[0,0] = false;
array_fill_2d(inventoryGridHover,inventoryGridWidth,inventoryGridHeight,false);

inventoryGridMouseHover[0,0] = false;
array_fill_2d(inventoryGridMouseHover,inventoryGridWidth,inventoryGridHeight,false);

inventoryGridMouseHoverX = -1;
inventoryGridMouseHoverY = -1;

pageHover[0] = false;
array_fill_1d(pageHover,9,false);







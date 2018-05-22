/// @description vars

active = false;

xPos = displayWidth/2;
yPos = 64;

matrixMouseX = -1;
matrixMouseY = -1;

spaceshipOffsetX = 0;
spaceshipOffsetY = 0;

length = spaceshipMaxSize;

width = 0;
height = 0;

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
keyMap[0] = "";
array_fill_1d(keyMap,spaceshipMaxSize,"");
refMap[0] = -1;
array_fill_1d(refMap,spaceshipMaxSize,-1);

connectionMap[0,0] = false;
array_fill_2d(connectionMap,spaceshipMaxSize,spaceshipMaxSize,false);
indexMap[0,0] = -1;
array_fill_2d(indexMap,spaceshipMaxSize,spaceshipMaxSize,-1);

connectionMapDirection[0,0] = false;
array_fill_2d(connectionMapDirection,spaceshipMaxSize,4,false);
connectionMapMouse[0] = false;
array_fill_1d(connectionMapMouse,4,false);

//layer bar on left
layerAmount = 2;

layerButtonSprite[0] = spr_icon_keyboard;
layerButtonSprite[1] = spr_icon_edit;

layerButtonHotkeyDisplay[0] = "CTL";
layerButtonHotkeyDisplay[1] = "SPC";

layerButtonHotkey[0] = vk_control;
layerButtonHotkey[1] = vk_space;

layerButtonHover[0] = false;
array_fill_1d(layerButtonHover,layerAmount,false);

layerSelected = 1;

layerBarX = displayWidth;
layerBarY = displayHeight/2;
layerBarAngle = 90;

hullSelected = 0;
rotationSelected = 0;
flipSelected = 1;
placeable = false;


//hull bar on bottom

hullBarX = displayWidth/2;
hullBarY = displayHeight;
hullBarAngle = 0;

hullButtonHover[0] = false;
array_fill_1d(hullButtonHover,hullAmount,false);


for(var i = 0; i<hullAmount; i++){
	hullButtonHotkey[i] = string(i+1);	
}

placeable = true;






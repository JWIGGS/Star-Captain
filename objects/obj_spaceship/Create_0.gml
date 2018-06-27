/// @description initialize spaceship

//state
player = false;
control = false;

//size
length = spaceshipMaxSize;
width = 0;
height = 0;

spriteHull = -1;
spriteComponent = -1;


//maps
gridX[0] = 0;
array_fill_1d(gridX,length,0);
gridY[0] = 0;
array_fill_1d(gridY,length,0);

hullMap[0] = "";
array_fill_1d(hullMap,length,"");
hullMaterialMap[0] = "";
array_fill_1d(hullMaterialMap,length,"");

wallMap[0] = "";
array_fill_1d(wallMap,length,"");
wallMaterialMap[0] = "";
array_fill_1d(wallMaterialMap,length,"");

rotationMap[0] = 0;
array_fill_1d(rotationMap,length,0);
flipMap[0] = 1;
array_fill_1d(flipMap,length,1);

componentMap[0] = "";
array_fill_1d(componentMap,length,"");
refMap[0] = -1;
array_fill_1d(refMap,length,-1);
keyMap[0] = "";
array_fill_1d(keyMap,length,"");

//generated maps
connectionMap[0,0] = false;
array_fill_2d(connectionMap,spaceshipMaxSize,spaceshipMaxSize,false);
indexMap[0,0] = -1;
array_fill_2d(indexMap,spaceshipMaxSize,spaceshipMaxSize,-1);
connectionMapDirection[0,0] = false;
array_fill_2d(connectionMapDirection,spaceshipMaxSize,4,false);

activateMap[0] = false;
array_fill_1d(activateMap,length,false);



//movement
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


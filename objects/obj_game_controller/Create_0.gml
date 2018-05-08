/// @description 

//map from numbers
event_user(0);


//set up ship buffer

global.spaceshipBufferGridX[0] = 0;
array_fill_1d(global.spaceshipBufferGridX,spaceshipMaxSize,0);
global.spaceshipBufferGridY[0] = 0;
array_fill_1d(global.spaceshipBufferGridY,spaceshipMaxSize,0);


global.spaceshipBufferHull[0] = "";
array_fill_1d(global.spaceshipBufferHull,spaceshipMaxSize,"");
global.spaceshipBufferMaterial[0] = "";
array_fill_1d(global.spaceshipBufferMaterial,spaceshipMaxSize,"iron");
global.spaceshipBufferRotation[0] = "";
array_fill_1d(global.spaceshipBufferRotation,spaceshipMaxSize,0);
global.spaceshipBufferFlip[0] = "";
array_fill_1d(global.spaceshipBufferFlip,spaceshipMaxSize,1);
global.spaceshipBufferComponent[0] = "";
array_fill_1d(global.spaceshipBufferComponent,spaceshipMaxSize,"");

global.spaceshipBufferKeymapA[0] = "";
array_fill_1d(global.spaceshipBufferKeymapA,spaceshipMaxSize,"");
global.spaceshipBufferKeymapB[0] = "";
array_fill_1d(global.spaceshipBufferKeymapB,spaceshipMaxSize,"");
global.spaceshipBufferKeymapType[0] = "";
array_fill_1d(global.spaceshipBufferKeymapType,spaceshipMaxSize,"or");

global.spaceshipBufferLength = 0;


//default ship
global.spaceshipBufferGridX[0] = 2;
global.spaceshipBufferGridY[0] = 0;
global.spaceshipBufferHull[0] = "nose";
global.spaceshipBufferComponent[0] = "cockpit";
global.spaceshipBufferRotation[0] = 0;

global.spaceshipBufferGridX[1] = 2;
global.spaceshipBufferGridY[1] = 1;
global.spaceshipBufferHull[1] = "full";

global.spaceshipBufferGridX[2] = 1;
global.spaceshipBufferGridY[2] = 1;
global.spaceshipBufferHull[2] = "edge";

global.spaceshipBufferGridX[3] = 3;
global.spaceshipBufferGridY[3] = 1;
global.spaceshipBufferHull[3] = "edge";
global.spaceshipBufferFlip[3] = -1;

global.spaceshipBufferGridX[4] = 0;
global.spaceshipBufferGridY[4] = 2;
global.spaceshipBufferComponent[4] = "thruster_basic";
global.spaceshipBufferFlip[4] = -1;
global.spaceshipBufferKeymapA[4] = "D";

global.spaceshipBufferGridX[5] = 1;
global.spaceshipBufferGridY[5] = 2;
global.spaceshipBufferHull[5] = "edge";
global.spaceshipBufferRotation[5] = 180;

global.spaceshipBufferGridX[6] = 2;
global.spaceshipBufferGridY[6] = 2;
global.spaceshipBufferComponent[6] = "engine_basic";
global.spaceshipBufferKeymapA[6] = "W";

global.spaceshipBufferGridX[7] = 3;
global.spaceshipBufferGridY[7] = 2;
global.spaceshipBufferHull[7] = "edge";
global.spaceshipBufferRotation[7] = 90;

global.spaceshipBufferGridX[8] = 4;
global.spaceshipBufferGridY[8] = 2;
global.spaceshipBufferComponent[8] = "thruster_basic";
global.spaceshipBufferKeymapA[8] = "A";

global.spaceshipBufferLength = 9;

//create starting ship
global.player = create_spaceship(room_width/2,room_height/2,true);









/// @description 

//map from numbers
event_user(0);


//set up ship buffer
global.spaceshipBufferHull[0,0] = "";
array_fill_2d(global.spaceshipBufferHull,spaceshipMaxSize,spaceshipMaxSize,"");
global.spaceshipBufferMaterial[0,0] = "";
array_fill_2d(global.spaceshipBufferMaterial,spaceshipMaxSize,spaceshipMaxSize,"aerogel");
global.spaceshipBufferRotation[0,0] = "";
array_fill_2d(global.spaceshipBufferRotation,spaceshipMaxSize,spaceshipMaxSize,0);
global.spaceshipBufferFlip[0,0] = "";
array_fill_2d(global.spaceshipBufferFlip,spaceshipMaxSize,spaceshipMaxSize,1);
global.spaceshipBufferComponent[0,0] = "";
array_fill_2d(global.spaceshipBufferComponent,spaceshipMaxSize,spaceshipMaxSize,"");

global.spaceshipBufferKeymapA[0,0] = "";
array_fill_2d(global.spaceshipBufferKeymapA,spaceshipMaxSize,spaceshipMaxSize,"");
global.spaceshipBufferKeymapB[0,0] = "";
array_fill_2d(global.spaceshipBufferKeymapB,spaceshipMaxSize,spaceshipMaxSize,"");
global.spaceshipBufferKeymapType[0,0] = "";
array_fill_2d(global.spaceshipBufferKeymapType,spaceshipMaxSize,spaceshipMaxSize,"or");


global.spaceshipBufferWidth = 5;
global.spaceshipBufferHeight = 3;

//default ship
global.spaceshipBufferHull[2,0] = "nose_curved";
global.spaceshipBufferComponent[2,0] = "cockpit";

global.spaceshipBufferHull[2,1] = "full";
global.spaceshipBufferHull[1,1] = "edge";
global.spaceshipBufferHull[3,1] = "edge"; global.spaceshipBufferFlip[3,1] = -1;

global.spaceshipBufferComponent[0,2] = "thruster_basic"; global.spaceshipBufferFlip[0,2] = -1; global.spaceshipBufferKeymapA[0,2] = "D";
global.spaceshipBufferHull[1,2] = "edge"; global.spaceshipBufferRotation[1,2] = 180;
global.spaceshipBufferComponent[2,2] = "engine_basic"; global.spaceshipBufferKeymapA[2,2] = "W";
global.spaceshipBufferHull[3,2] = "edge"; global.spaceshipBufferRotation[3,2] = 90;
global.spaceshipBufferComponent[4,2] = "thruster_basic"; global.spaceshipBufferKeymapA[4,2] = "A";

//create starting ship
global.player = create_spaceship(room_width/2,room_height/2,true);









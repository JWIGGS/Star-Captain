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
global.spaceshipBufferHullMaterial[0] = "";
array_fill_1d(global.spaceshipBufferHullMaterial,spaceshipMaxSize,"");

global.spaceshipBufferWall[0] = "";
array_fill_1d(global.spaceshipBufferWall,spaceshipMaxSize,"");
global.spaceshipBufferWallMaterial[0] = "";
array_fill_1d(global.spaceshipBufferWallMaterial,spaceshipMaxSize,"");

global.spaceshipBufferRotation[0] = 0;
array_fill_1d(global.spaceshipBufferRotation,spaceshipMaxSize,0);
global.spaceshipBufferFlip[0] = 1;
array_fill_1d(global.spaceshipBufferFlip,spaceshipMaxSize,1);

global.spaceshipBufferComponent[0] = "";
array_fill_1d(global.spaceshipBufferComponent,spaceshipMaxSize,"");
global.spaceshipBufferRef[0] = -1;
array_fill_1d(global.spaceshipBufferRef,spaceshipMaxSize,-1);
global.spaceshipBufferKey[0] = "";
array_fill_1d(global.spaceshipBufferKey,spaceshipMaxSize,"");

global.spaceshipBufferLength = 0;


//default ship

global.spaceshipBufferGridX[0] = 2;
global.spaceshipBufferGridY[0] = 0;
global.spaceshipBufferRef[0] = 0;
global.spaceshipBufferHull[0] = "edge";
global.spaceshipBufferHullMaterial[0] = "iron";
global.spaceshipBufferWall[0] = "edge";
global.spaceshipBufferWallMaterial[0] = "iron";
global.spaceshipBufferRotation[0] = 90;
global.spaceshipBufferFlip[0] = -1;

global.spaceshipBufferGridX[1] = 3;
global.spaceshipBufferGridY[1] = 0;
global.spaceshipBufferRef[1] = 1;
global.spaceshipBufferHull[1] = "full";
global.spaceshipBufferHullMaterial[1] = "iron";
global.spaceshipBufferWall[1] = "full";
global.spaceshipBufferWallMaterial[1] = "iron";

global.spaceshipBufferGridX[2] = 4;
global.spaceshipBufferGridY[2] = 0;
global.spaceshipBufferRef[2] = 2;
global.spaceshipBufferHull[2] = "edge";
global.spaceshipBufferHullMaterial[2] = "iron";
global.spaceshipBufferWall[2] = "edge";
global.spaceshipBufferWallMaterial[2] = "iron";
global.spaceshipBufferFlip[2] = -1;

global.spaceshipBufferGridX[3] = 1;
global.spaceshipBufferGridY[3] = 1;
global.spaceshipBufferRef[3] = 3;
global.spaceshipBufferHull[3] = "edge";
global.spaceshipBufferHullMaterial[3] = "iron";
global.spaceshipBufferWall[3] = "edge";
global.spaceshipBufferWallMaterial[3] = "iron";

global.spaceshipBufferGridX[4] = 2;
global.spaceshipBufferGridY[4] = 1;
global.spaceshipBufferRef[4] = 4;
global.spaceshipBufferHull[4] = "full";
global.spaceshipBufferHullMaterial[4] = "iron";
global.spaceshipBufferWall[4] = "edge";
global.spaceshipBufferWallMaterial[4] = "iron";
global.spaceshipBufferRotation[4] = 180;

global.spaceshipBufferGridX[5] = 3;
global.spaceshipBufferGridY[5] = 1;
global.spaceshipBufferRef[5] = 5;
global.spaceshipBufferHull[5] = "full";
global.spaceshipBufferHullMaterial[5] = "iron";

global.spaceshipBufferGridX[6] = 4;
global.spaceshipBufferGridY[6] = 1;
global.spaceshipBufferRef[6] = 6;
global.spaceshipBufferHull[6] = "full";
global.spaceshipBufferHullMaterial[6] = "iron";
global.spaceshipBufferWall[6] = "edge";
global.spaceshipBufferWallMaterial[6] = "iron";
global.spaceshipBufferRotation[6] = 90;

global.spaceshipBufferGridX[7] = 5;
global.spaceshipBufferGridY[7] = 1;
global.spaceshipBufferRef[7] = 7;
global.spaceshipBufferHull[7] = "edge";
global.spaceshipBufferHullMaterial[7] = "iron";
global.spaceshipBufferWall[7] = "edge";
global.spaceshipBufferWallMaterial[7] = "iron";
global.spaceshipBufferFlip[7] = -1;

global.spaceshipBufferGridX[8] = 1;
global.spaceshipBufferGridY[8] = 2;
global.spaceshipBufferRef[8] = 8;
global.spaceshipBufferHull[8] = "full";
global.spaceshipBufferHullMaterial[8] = "iron";
global.spaceshipBufferWall[8] = "full";
global.spaceshipBufferWallMaterial[8] = "iron";

global.spaceshipBufferGridX[9] = 2;
global.spaceshipBufferGridY[9] = 2;
global.spaceshipBufferRef[9] = 9;
global.spaceshipBufferHull[9] = "full";
global.spaceshipBufferHullMaterial[9] = "iron";

global.spaceshipBufferGridX[10] = 3;
global.spaceshipBufferGridY[10] = 2;
global.spaceshipBufferRef[10] = 10;
global.spaceshipBufferHull[10] = "full";
global.spaceshipBufferHullMaterial[10] = "iron";
global.spaceshipBufferComponent[10] = "control_basic";

global.spaceshipBufferGridX[11] = 4;
global.spaceshipBufferGridY[11] = 2;
global.spaceshipBufferRef[11] = 11;
global.spaceshipBufferHull[11] = "full";
global.spaceshipBufferHullMaterial[11] = "iron";

global.spaceshipBufferGridX[12] = 5;
global.spaceshipBufferGridY[12] = 2;
global.spaceshipBufferRef[12] = 12;
global.spaceshipBufferHull[12] = "full";
global.spaceshipBufferHullMaterial[12] = "iron";
global.spaceshipBufferWall[12] = "full";
global.spaceshipBufferWallMaterial[12] = "iron";

global.spaceshipBufferGridX[13] = 1;
global.spaceshipBufferGridY[13] = 3;
global.spaceshipBufferRef[13] = 13;
global.spaceshipBufferHull[13] = "full";
global.spaceshipBufferHullMaterial[13] = "iron";
global.spaceshipBufferWall[13] = "full";
global.spaceshipBufferWallMaterial[13] = "iron";

global.spaceshipBufferGridX[14] = 2;
global.spaceshipBufferGridY[14] = 3;
global.spaceshipBufferRef[14] = 14;
global.spaceshipBufferHull[14] = "full";
global.spaceshipBufferHullMaterial[14] = "iron";

global.spaceshipBufferGridX[15] = 3;
global.spaceshipBufferGridY[15] = 3;
global.spaceshipBufferRef[15] = 15;
global.spaceshipBufferHull[15] = "full";
global.spaceshipBufferHullMaterial[15] = "iron";

global.spaceshipBufferGridX[16] = 4;
global.spaceshipBufferGridY[16] = 3;
global.spaceshipBufferRef[16] = 16;
global.spaceshipBufferHull[16] = "full";
global.spaceshipBufferHullMaterial[16] = "iron";

global.spaceshipBufferGridX[17] = 5;
global.spaceshipBufferGridY[17] = 3;
global.spaceshipBufferRef[17] = 17;
global.spaceshipBufferHull[17] = "full";
global.spaceshipBufferHullMaterial[17] = "iron";
global.spaceshipBufferWall[17] = "full";
global.spaceshipBufferWallMaterial[17] = "iron";

global.spaceshipBufferGridX[18] = 0;
global.spaceshipBufferGridY[18] = 3;
global.spaceshipBufferRef[18] = 18;
global.spaceshipBufferComponent[18] = "thruster_basic";
global.spaceshipBufferFlip[18] = -1;
global.spaceshipBufferKey[18] = "D";

global.spaceshipBufferGridX[19] = 6;
global.spaceshipBufferGridY[19] = 3;
global.spaceshipBufferRef[19] = 19;
global.spaceshipBufferComponent[19] = "thruster_basic";
global.spaceshipBufferKey[19] = "A";


global.spaceshipBufferLength = 20;

//create starting ship
var newShip = create_spaceship(room_width/2,room_height/2,true);

global.player = instance_create_depth(newShip.x,newShip.y,-10,obj_player);

global.cameraFollowing = global.player;
global.cameraObject = instance_create_depth(global.player.x,global.player.y,depth,obj_camera_controller);

with(global.player){
	spaceship = newShip;
	relativeX = 0;
	relativeY = 16;
}




global.starCount = 100;
global.starBound = 1500;

repeat(global.starCount){
	instance_create_depth(irandom_range((room_width/2)-global.starBound,(room_width/2)+global.starBound),irandom_range((room_height/2)-global.starBound,(room_height/2)+global.starBound),0,obj_star);
}












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
global.spaceshipBufferRef[0] = -1;
array_fill_1d(global.spaceshipBufferRef,spaceshipMaxSize,-1);
global.spaceshipBufferKey[0] = "";
array_fill_1d(global.spaceshipBufferKey,spaceshipMaxSize,"");

global.spaceshipBufferLength = 0;


//default ship
global.spaceshipBufferGridX[0] = 2;
global.spaceshipBufferGridY[0] = 0;
global.spaceshipBufferHull[0] = "";
global.spaceshipBufferComponent[0] = "cockpit";
global.spaceshipBufferRotation[0] = 90;
global.spaceshipBufferRef[0] = 0;

global.spaceshipBufferGridX[1] = 2;
global.spaceshipBufferGridY[1] = 1;
global.spaceshipBufferHull[1] = "full";
global.spaceshipBufferRef[1] = 1;

global.spaceshipBufferGridX[2] = 1;
global.spaceshipBufferGridY[2] = 1;
global.spaceshipBufferHull[2] = "edge";
global.spaceshipBufferRef[2] = 2;

global.spaceshipBufferGridX[3] = 3;
global.spaceshipBufferGridY[3] = 1;
global.spaceshipBufferHull[3] = "edge";
global.spaceshipBufferFlip[3] = -1;
global.spaceshipBufferRef[3] = 3;

global.spaceshipBufferGridX[4] = 0;
global.spaceshipBufferGridY[4] = 2;
global.spaceshipBufferComponent[4] = "thruster_basic";
global.spaceshipBufferFlip[4] = -1;
global.spaceshipBufferKey[4] = "D";
global.spaceshipBufferRef[4] = 4;

global.spaceshipBufferGridX[5] = 1;
global.spaceshipBufferGridY[5] = 2;
global.spaceshipBufferHull[5] = "edge";
global.spaceshipBufferRotation[5] = 180;
global.spaceshipBufferRef[5] = 5;

global.spaceshipBufferGridX[6] = 2;
global.spaceshipBufferGridY[6] = 2;
global.spaceshipBufferComponent[6] = "engine_basic";
global.spaceshipBufferKey[6] = "W";
global.spaceshipBufferRef[6] = 6;

global.spaceshipBufferGridX[7] = 3;
global.spaceshipBufferGridY[7] = 2;
global.spaceshipBufferHull[7] = "edge";
global.spaceshipBufferRotation[7] = 90;
global.spaceshipBufferRef[7] = 7;

global.spaceshipBufferGridX[8] = 4;
global.spaceshipBufferGridY[8] = 2;
global.spaceshipBufferComponent[8] = "thruster_basic";
global.spaceshipBufferKey[8] = "A";
global.spaceshipBufferRef[8] = 8;

global.spaceshipBufferLength = 9;

//create starting ship
global.player = create_spaceship(room_width/2,room_height/2,true);
global.cameraFollowing = global.player;
global.cameraObject = instance_create_depth(global.player.x,global.player.y,depth,obj_camera_controller);


with(instance_create_depth(global.player.x-10,global.player.y-10,-10,obj_player)){
	spaceship = global.player;
	relativeX = -10;
	relativeY = -10;
}


global.starCount = 500;
global.starBound = 4000;

repeat(global.starCount){
	instance_create_depth(irandom_range((room_width/2)-global.starBound,(room_width/2)+global.starBound),irandom_range((room_height/2)-global.starBound,(room_height/2)+global.starBound),0,obj_star);
}











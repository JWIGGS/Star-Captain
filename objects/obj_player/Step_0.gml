/// @description control


//movement control
event_user(0);

//inventory control
if(inventoryMouseAmount<=0){
	inventoryMouseItem="";
}

if(keyboard_check_pressed(ord("Q"))){
	inventoryActive = !inventoryActive;	
	control = !inventoryActive;	
}


if(inventoryActive){
	//inventory control
	event_user(2);
	
	if(keyboard_check_pressed(vk_escape)){
		inventoryActive = false;	
	}
}




//block placing
if(control and inventoryMouseItem!="" and inventoryMouseAmount>0){
	event_user(3);
}



//temp switch control
if(keyboard_check_pressed(vk_enter)){
	control = !control;
	if(control){
		global.cameraFollowing = id;
	}
}





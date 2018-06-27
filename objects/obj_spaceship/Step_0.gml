/// @description ship control


if(player and control and !keyboard_check(vk_lshift)){
	//keystroke check
	event_user(0);
}


//block actions
event_user(1);

//movement
event_user(2);

if(keyboard_check_pressed(vk_enter)){
	control = !control;
	if(control){
		global.cameraFollowing = id;
	}
}



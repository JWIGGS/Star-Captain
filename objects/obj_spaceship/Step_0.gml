/// @description ship control

if(active){
	
	if(player and !keyboard_check(vk_lshift)){
		//keystroke check
		event_user(0);
	}
	
	//block actions
	event_user(1);

	//movement
	event_user(2);

}


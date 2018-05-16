/// @description move camera

if(player){
	
	var cameraResetStart = cameraReset;
	
	if(keyboard_check_pressed(vk_lshift)){
		cameraReset = true;	
	}
	
	if(keyboard_check(vk_lshift)){
		
		cameraTargetX += (keyboard_check(ord("D")) - keyboard_check(ord("A")))*(1+(point_distance(0,0,spdX,spdY)/100));
		cameraTargetY += (keyboard_check(ord("S")) - keyboard_check(ord("W")))*(1+(point_distance(0,0,spdX,spdY)/100));
		
		if(cameraReset){
			cameraReset = !(keyboard_check(ord("W")) or keyboard_check(ord("S")) or keyboard_check(ord("A")) or keyboard_check(ord("D")));
		}

		
	}
	else if(cameraReset){
		cameraTargetX = x;
		cameraTargetY = y;
	}
	
	if(keyboard_check_released(vk_lshift)){
		if(cameraReset){
			cameraTargetX = x;
			cameraTargetY = y;
		}
	}
	
	cameraSmooth = !(abs(cameraX-x)<boolean_return(abs(spdX)/2<2,2,abs(spdX)/2) and abs(cameraY-y)<boolean_return(abs(spdY)/2<2,2,abs(spdY)/2));
	
	cameraX += smooth_to_target(cameraTargetX,cameraX,boolean_return(cameraSmooth,10,1));
	cameraY += smooth_to_target(cameraTargetY,cameraY,boolean_return(cameraSmooth,10,1));


	camera_movement(cameraX,cameraY,view_camera[0],displayWidth, displayHeight,1,0);





}
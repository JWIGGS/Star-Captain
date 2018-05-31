/// @description move camera


var xPrev = x;
var yPrev = y;
var zoomPrev = cameraZoom;

if(instance_exists(global.cameraFollowing)){
	if(global.cameraFollowing = obj_spaceship){
		cameraSpeed = (2+(point_distance(0,0,global.cameraFollowing.spdX,global.cameraFollowing.spdY)/100));
	}

	if(keyboard_check_pressed(vk_lshift)){
		cameraLock = true;	
	}

	if(keyboard_check(vk_lshift)){
	
	
		if(keyboard_check(ord("W")) or keyboard_check(ord("S")) or keyboard_check(ord("A"))or keyboard_check(ord("D"))){
			cameraLock = false;	
		}
	
		if(!cameraLock){
			cameraTargetX += (keyboard_check(ord("D")) - keyboard_check(ord("A")))*cameraSpeed;
			cameraTargetY += (keyboard_check(ord("S")) - keyboard_check(ord("W")))*cameraSpeed;
		}

	}

	else if(cameraLock){
		cameraTargetX = global.cameraFollowing.x;
		cameraTargetY = global.cameraFollowing.y;
	}

	
	x += smooth_to_target(cameraTargetX,x,boolean_return(cameraLock,1,10));
	y += smooth_to_target(cameraTargetY,y,boolean_return(cameraLock,1,10));


	cameraTargetZoom = clamp(cameraTargetZoom +(cameraZoomDelta*(mouse_wheel_up()-mouse_wheel_down())),cameraZoomMin,cameraZoomMax);
	
	cameraZoom += smooth_to_target(cameraTargetZoom,cameraZoom,5);
}

camera_movement(x,y,view_camera[0],displayWidth, displayHeight,cameraZoom,-global.cameraFollowing.dir+90);


//parallax stars
var focusX = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
var focusY = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);

console_log(focusX,focusY);

with(obj_star){

	image_xscale = other.cameraZoom*.8;
	image_yscale = other.cameraZoom*.8;	

	x += (other.x-xPrev)*parallax;
	y += (other.y-yPrev)*parallax;

	x = wrap(x,focusX-global.starBound,focusX+global.starBound);
	y = wrap(y,focusY-global.starBound,focusY+global.starBound);
	
	
	
}

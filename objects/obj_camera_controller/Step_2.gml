/// @description move camera


var xPrev = x;
var yPrev = y;
var zoomPrev = cameraZoom;

if(instance_exists(global.cameraFollowing)){

	cameraTargetX = global.cameraFollowing.x;
	cameraTargetY = global.cameraFollowing.y;

	x = cameraTargetX;
	y = cameraTargetY;

	cameraTargetZoom = clamp(cameraTargetZoom +(cameraZoomDelta*(mouse_wheel_up()-mouse_wheel_down())),cameraZoomMin,cameraZoomMax);
	
	cameraZoom += smooth_to_target(cameraTargetZoom,cameraZoom,5);
}


camera_movement(x,y,view_camera[0],displayWidth, displayHeight,cameraZoom, -global.cameraFollowing.dir+90);


//parallax stars
var focusX = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
var focusY = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);

with(obj_star){

	image_xscale = other.cameraZoom*.8;
	image_yscale = other.cameraZoom*.8;	

	x += (other.x-xPrev)*parallax;
	y += (other.y-yPrev)*parallax;

	x = wrap(x,focusX-global.starBound,focusX+global.starBound);
	y = wrap(y,focusY-global.starBound,focusY+global.starBound);
	
	
	
}

var xPos = argument0; ///@param x
var yPos = argument1; ///@param y
var camera = argument2; ///@param camera
var width = argument3; ///@param global.displayWidth
var height = argument4; ///@param global.displayHeight
var zoom = argument5; ///@param zoom
var angle = argument6; ///@param angle

camera_set_view_size(camera,width/zoom,height/zoom);
camera_set_view_pos(camera,xPos-(width/2/zoom),yPos-(height/2/zoom));
camera_set_view_angle(camera,angle);
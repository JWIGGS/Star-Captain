var camera = argument0; ///@param camera
var width = argument1; ///@param global.displayWidth
var height = argument2; ///@param global.displayHeight
var zoom = argument3; ///@param zoom
var angle = argument4; ///@param angle
camera_set_view_size(camera,width/zoom,height/zoom);
camera_set_view_pos(camera,x-(width/2/zoom),y-(height/2/zoom));
camera_set_view_angle(camera,angle);
var sprite = argument0; ///@param sprite
var subimage = argument1; ///@param subimage
var xPos = argument2; ///@param x
var yPos = argument3; ///@param y
var angle = argument4; ///@param angle
var index = argument5; ///@param index
var length = argument6; ///@param length

var pointX = draw_bar_point_x(xPos,yPos,angle,index,length);
var pointY = draw_bar_point_y(xPos,yPos,angle,index,length);

draw_sprite(sprite,subimage,pointX,pointY);


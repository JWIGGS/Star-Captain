var xPos = argument0; ///@param x
var yPos = argument1; ///@param y
var angle = argument2+90; ///@param angle
var index = argument3; ///@param index
var length = argument4; ///@param length

return rotate_around_point(xPos - (length*sprite_get_width(spr_gui_bar_middle)/2) + (index*sprite_get_width(spr_gui_bar_middle))+(sprite_get_width(spr_gui_bar_middle)/2),yPos-32,xPos,yPos,angle,"x");
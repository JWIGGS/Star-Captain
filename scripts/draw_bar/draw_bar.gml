var xPos = argument0; ///@param x
var yPos = argument1; ///@param y
var angle = argument2; ///@param angle
var segments = argument3; ///@param segments

var width = segments * sprite_get_width(spr_gui_bar_middle);


draw_sprite_ext(spr_gui_bar_start,0,rotate_around_point(xPos-(width/2)-sprite_get_width(spr_gui_bar_start),yPos,xPos,yPos,angle+90,"x"),rotate_around_point(xPos-(width/2)-sprite_get_width(spr_gui_bar_start),yPos,xPos,yPos,angle+90,"y"),1,1,angle,c_white,1);

for(var i = 0; i<segments; i++){
	draw_sprite_ext(spr_gui_bar_middle,0,rotate_around_point(xPos-(width/2)+(i*sprite_get_width(spr_gui_bar_middle)),yPos,xPos,yPos,angle+90,"x"),rotate_around_point(xPos-(width/2)+(i*sprite_get_width(spr_gui_bar_middle)),yPos,xPos,yPos,angle+90,"y"),1,1,angle,c_white,1);
}
draw_sprite_ext(spr_gui_bar_end,0,rotate_around_point(xPos+(width/2)+sprite_get_width(spr_gui_bar_end)-1,yPos,xPos,yPos,angle+90,"x"),rotate_around_point(xPos+(width/2)+sprite_get_width(spr_gui_bar_end)-1,yPos,xPos,yPos,angle+90,"y"),1,1,angle,c_white,1);



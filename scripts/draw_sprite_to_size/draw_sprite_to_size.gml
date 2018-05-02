var sprite = argument0; ///@param sprite
var subimage = argument1; ///@param subimage
var xPos = argument2; ///@param x
var yPos = argument3; ///@param y
var width = argument4; ///@param width
var height = argument5; ///@param height
var rotation = argument6; ///@param rotation
var color = argument7; ///@param color
var alpha = argument8; ///@param alpha

var spriteWidth = sprite_get_width(sprite);
var spriteHeight = sprite_get_height(sprite);

draw_sprite_ext(sprite,subimage,xPos,yPos,((width/spriteWidth)*(spriteWidth>spriteHeight))+((height/spriteHeight)*(spriteWidth<=spriteHeight)),((width/spriteWidth)*(spriteWidth>spriteHeight))+((height/spriteHeight)*(spriteWidth<=spriteHeight)),rotation,color,alpha);

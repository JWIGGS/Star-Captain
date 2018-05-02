var instance  = argument0; ///@param instance
var xGrid = argument1; ///@param xGrid
var yGrid = argument2; ///@param yGrid
var xOffset = argument3; ///@param xOffset
var yOffset = argument4; ///@param yOffset
var relativeDepth = argument5; ///@param relativeDepth

var xCreate = rotate_around_point((x-sprite_xoffset)+(xGrid*32)+16+xOffset,(y-sprite_yoffset)+(yGrid*32)+16+yOffset,x,y,dir,"x");
var yCreate = rotate_around_point((x-sprite_xoffset)+(xGrid*32)+16+xOffset,(y-sprite_yoffset)+(yGrid*32)+16+yOffset,x,y,dir,"y");

return instance_create_depth(xCreate,yCreate,depth+relativeDepth,instance);

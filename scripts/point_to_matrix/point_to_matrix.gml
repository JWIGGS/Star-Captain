var xPos = argument0;///@param x
var yPos = argument1; ///@param y
var ship = argument2; ///@param ship
var returnType = argument3; ///@param returnType

var originX = ship.x-ship.sprite_xoffset+spaceshipSpriteOffset;
var originY = ship.y-ship.sprite_yoffset+spaceshipSpriteOffset;

var rotX = rotate_around_point(originX,originY,ship.x,ship.y,ship.dir,"x");
var rotY = rotate_around_point(originX,originY,ship.x,ship.y,ship.dir,"y");

var pointDir = point_direction(rotX,rotY,xPos,yPos);
var pointDis = point_distance(rotX,rotY,xPos,yPos);

var lengthX = lengthdir_x(pointDis,pointDir);
var lengthY = lengthdir_y(pointDis,pointDir);

var pointY = -(lengthdir_x(lengthX,-ship.dir) - lengthdir_y(lengthY,-ship.dir)) div gridSize;
var pointX = (lengthdir_y(lengthX,-ship.dir) + lengthdir_x(lengthY,-ship.dir)) div gridSize;

if(returnType = "x"){
	return pointX;	
}

return pointY;


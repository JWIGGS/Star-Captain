var xPos = argument0; ///@param xPos
var yPos = argument1; ///@param yPos
var x1 = argument2; ///@param x1
var y1 = argument3; ///@param y1
var x2 = argument4; ///@param x2
var y2 = argument5; ///@param y2


if(x2<x1){
	var x3 = x1;
	x1 = x2;
	x2 = x3;
}

if(y2<y1){
	var y3 = y1;
	y1 = y2;
	y2 = y3;
}

return point_in_rectangle(xPos,yPos,x1,y1,x2,y2);


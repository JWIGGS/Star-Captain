var forcePositionX = argument0; ///@param forcePositionX
var forcePositionY = argument1; ///@param forcePositionY
var forceAngle = wrap(argument2,0,360); ///@param forceAngle
var forceAmount = argument3; ///@param forceAmount

var forceAmountTranslational = per_second(forceAmount*100);
var forceAmountRotational = per_second(forceAmount*2);



spdX += lengthdir_x((forceAmountTranslational)/(mass),forceAngle+dir);
spdY += lengthdir_y((forceAmountTranslational)/(mass),forceAngle+dir);

switch(forceAngle){
	case 0:
		spdAngle += (forcePositionX)*(forceAmountRotational/mass);
		break;
	
	case 90:
		spdAngle -= (forcePositionY)*(forceAmountRotational/mass);
		break;
	
	case 180:
		spdAngle -= (forcePositionX)*(forceAmountRotational/mass);
		break;
	
	case 270:
		spdAngle += (forcePositionY)*(forceAmountRotational/mass);
		break;
	
	
}




/// @description movement interpretation

//translational movement
x += per_second(spdX);
y += per_second(spdY);

accelX = spdX - spdXPrev;
accelY = spdY - spdYPrev;

spdXPrev = spdX;
spdYPrev = spdY;
	
//rotational movement
dir += per_second(spdAngle);
image_angle = dir-90;
	
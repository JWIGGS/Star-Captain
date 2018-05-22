/// @description vars
parallax = random_distribution(distribution_parallax);
depth = round(parallax-1);

image_index = irandom_range(0,3);
image_angle = irandom_range(0,360);
angle_speed = random_range(-.2,.2);
waveFrom = random_range(.8,.9);
waveTo = random_range(1.1,1.2);
waveTime = random_range(2,5);
alphaFrom = 0;
alphaTo = random_range(.7,1);
alphaTime = random_range(15,20);

image_xscale = 1;
image_yscale = 1;

zoomFar = false;

/// @description movement control

if(active){
	
	//floating in space
	if(spaceship=noone){

		//translational force
		var translationalForce = (keyboard_check(ord("W"))-keyboard_check(ord("S")))*10;

		//left thruster
		spaceship_apply_force(-10,0,0,translationalForce);
		
		//right thruster
		spaceship_apply_force(10,0,0,translationalForce);
		
		
		
		var rotationalForce = (keyboard_check(ord("A"))-keyboard_check(ord("D")))*10;
		
		spaceship_apply_force(10,0,0,rotationalForce);
		spaceship_apply_force(-10,0,0,-rotationalForce);
	}
	
	else{
		x = spaceship.x + rotate_around_point(relativeX,relativeY,0,0,spaceship.dir,"x");
		y = spaceship.y + rotate_around_point(relativeX,relativeY,0,0,spaceship.dir,"y");
		
		spdAngle = spaceship.spdAngle;
		
	}
	
}



//movement
event_user(0);

//camera_movement(x,y,view_camera[0],1280,780,1,0);
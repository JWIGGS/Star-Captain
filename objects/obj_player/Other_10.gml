/// @description movement control

//floating in space
if(spaceship=noone){
	
	if(control){
		//translational force
		var translationalForce = (keyboard_check(ord("W"))-keyboard_check(ord("S")))*10;
		spaceship_apply_force(-10,0,0,translationalForce);
		spaceship_apply_force(10,0,0,translationalForce);
		
		var rotationalForce = (keyboard_check(ord("A"))-keyboard_check(ord("D")))*10;
		spaceship_apply_force(10,0,0,rotationalForce);
		spaceship_apply_force(-10,0,0,-rotationalForce);
	}
	
	//movement in space
	event_user(1);
	
}
	
//inside a spaceship
else{
	
	//relative rotation

	dir = spaceship.dir;
	
	if(control){
		relativeDir = rotate_speed(relativeDir,round(point_direction(x,y,mouse_x,mouse_y)),per_second(360));
		
		var moveX = (keyboard_check(ord("D"))-keyboard_check(ord("A")))*per_second(spdMove);
		var moveY = (keyboard_check(ord("S"))-keyboard_check(ord("W")))*per_second(spdMove);
		
		
		if(moveX!=0){
			if(collision_movement(moveX+spdX,0,obj_spaceship)){
				moveX = 0;
			}
			relativeX += moveX;
		}
		
		if(moveY!=0){
			if(collision_movement(0,moveY+spdY,obj_spaceship)){
				moveY = 0;	
			}
			relativeY += moveY;
		}

	}
	
	x = spaceship.x + rotate_around_point(relativeX,relativeY,0,0,spaceship.dir,"x");
	y = spaceship.y + rotate_around_point(relativeX,relativeY,0,0,spaceship.dir,"y");

}

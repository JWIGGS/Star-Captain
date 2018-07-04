/// @description move to player

if(targetMagnet!=-1){
	spd = clamp(spd +per_second(2),0,64);
	dir = point_direction(x,y,targetMagnet.x,targetMagnet.y);
	
	x += per_second(lengthdir_x(spd,dir));
	y += per_second(lengthdir_y(spd,dir));
	
	//pickup
	if(distance_to_point(targetMagnet.x,targetMagnet.y)<radiusPickup){
		event_user(3);	
	}
	
}



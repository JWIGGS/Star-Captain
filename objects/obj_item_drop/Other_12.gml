/// @description move to player

if(targetMagnet!=-1){
	spd = clamp(spd +per_second(128),0,256);
	dir = point_direction(x,y,targetMagnet.x,targetMagnet.y);
	
	
	
	//pickup
	if(point_distance(x,y,targetMagnet.x,targetMagnet.y)<radiusPickup){
		event_user(3);	
	}
	
}
else{
	if(spd>1){
		spd -= per_second(spd/2);
	}
	else{
		spd = 0;	
	}
	
}
x += per_second(lengthdir_x(spd,dir));
y += per_second(lengthdir_y(spd,dir));



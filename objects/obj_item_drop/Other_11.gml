/// @description detect nearest player

if(instance_exists(obj_player)){
	var nearestPlayer = instance_nearest(x,y,obj_player);
	if(distance_to_point(nearestPlayer.x,nearestPlayer.y)<radiusMagnet){
		targetMagnet = nearestPlayer;
	}
}
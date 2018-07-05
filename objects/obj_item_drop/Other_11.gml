/// @description detect nearest player

if(instance_exists(obj_player)){
	var nearestPlayer = instance_nearest(x,y,obj_player);
	if(point_distance(x,y,nearestPlayer.x,nearestPlayer.y)<radiusMagnet){
		targetMagnet = nearestPlayer;
	}
}
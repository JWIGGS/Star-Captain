/// @description draw ship

if(!active){
	exit;	
}

draw_self();

draw_set_color(c_red);
draw_circle(x,y,4,false);
draw_circle(x,y,inertia,true);

for(var i = 0; i<length; i++){
		
	if(activateMap[i]){
		var rotX = rotate_around_point(16+(gridX[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"x")*flipMap[i]),16+(gridY[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"y")*flipMap[i]),sprite_xoffset,sprite_yoffset,dir,"x")
		var rotY = rotate_around_point(16+(gridX[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"x")*flipMap[i]),16+(gridY[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"y")*flipMap[i]),sprite_xoffset,sprite_yoffset,dir,"y")

		draw_circle(x-sprite_xoffset+rotX,y-sprite_yoffset+rotY,4,false);

	}	
}



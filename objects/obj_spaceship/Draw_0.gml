/// @description draw ship

if(!active){
	exit;	
}

draw_self();

draw_set_color(c_red);
draw_circle(x,y,4,false);
draw_circle(x,y,inertia,true);

for(var i = 0; i<width; i++){
	for(var j = 0; j<height; j++){
		
		if(activateMap[i,j]){
			var rotX = rotate_around_point(16+(i*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i,j]),map_data(global.itemData,itemDataCogY,componentMap[i,j]),0,0,rotationMap[i,j]+90,"x")*flipMap[i,j]),16+(j*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i,j]),map_data(global.itemData,itemDataCogY,componentMap[i,j]),0,0,rotationMap[i,j]+90,"y")*flipMap[i,j]),sprite_xoffset,sprite_yoffset,dir,"x")
			var rotY = rotate_around_point(16+(i*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i,j]),map_data(global.itemData,itemDataCogY,componentMap[i,j]),0,0,rotationMap[i,j]+90,"x")*flipMap[i,j]),16+(j*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i,j]),map_data(global.itemData,itemDataCogY,componentMap[i,j]),0,0,rotationMap[i,j]+90,"y")*flipMap[i,j]),sprite_xoffset,sprite_yoffset,dir,"y")

			draw_circle(x-sprite_xoffset+rotX,y-sprite_yoffset+rotY,4,false);
			
			
			
		}
	}	
}



/// @description draw ship

if(!active){
	exit;	
}


//draw ship
draw_self();

//draw cog and inertia
draw_set_color(c_red);
draw_circle(x,y,4,false);
draw_circle(x,y,inertia,true);


//draw activated components
for(var i = 0; i<length; i++){
	if(activateMap[i]){
		draw_circle(x-sprite_xoffset+rotate_around_point(boolean_return(rotationMap[i] = 180,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=270,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0)+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(((rotationMap[i] mod 180)/90)))+(gridX[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"x")*flipMap[i]),boolean_return(rotationMap[i]=90,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=180,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0)+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(((rotationMap[i] mod 180)/90)))+(gridY[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"y")*flipMap[i]),sprite_xoffset,sprite_yoffset,dir,"x"),y-sprite_yoffset+rotate_around_point(boolean_return(rotationMap[i] = 180,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=270,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0)+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(((rotationMap[i] mod 180)/90)))+(gridX[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"x")*flipMap[i]),boolean_return(rotationMap[i]=90,32*(1-map_data(global.itemData,itemDataWidth,componentMap[i])),0)+boolean_return(rotationMap[i]=180,32*(1-map_data(global.itemData,itemDataHeight,componentMap[i])),0)+(16*map_data(global.itemData,itemDataHeight,componentMap[i])*(1-((rotationMap[i] mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,componentMap[i])*(((rotationMap[i] mod 180)/90)))+(gridY[i]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[i]),map_data(global.itemData,itemDataCogY,componentMap[i]),0,0,rotationMap[i]+90,"y")*flipMap[i]),sprite_xoffset,sprite_yoffset,dir,"y"),4,false);
	}	
}


